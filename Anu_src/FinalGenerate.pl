#!/usr/bin/perl -w
#
$tmp_dir_path = $ARGV[2];
use GDBM_File;
while(<STDIN>){
	chomp($_);

	#$_ =~ s/Z//g; # Deletes Z "nukta" from all hindi words	
	if($_ =~ /^\(id-Apertium_input\ (\d+)\ (.*)\)/){
		$id=$1;
		print "\n(id-Apertium_output\ $id "; 
		@words=split(/\s+/,$2);
		foreach $word (@words){
			if($word =~ /\^(.*)\$/){

				#remove "Z" from hindi words.not if it's english word (start with @)
				if($word !~ /\^\@/){$word =~ s/Z//;}

				# for prasargs having more than one words.
				if($word =~ /\^([^<]+)_(.*)<cat:prsg>/){ $word =~ s/_/ /g;}


				#for  nouns having more than one words.
				if($word =~ /\^([^<]+)_.*/){


					#for adjectival participle , where the form has a tam "yA_huA" e.g BarA_huA. Make it to verb-form and generate as a verb.
					if($word =~ /\^([^_]+)_huA<cat:adj><case:(.+)>.*<gen:(.+)>.*<num:(.+)>/){
	
						$prtpl_word=$1;
						
						$gen=$3;$num=$4;
						open(PRT_TMP,">$tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/prtpl_word") || die "Can't open file $tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/prtpl_word";
						print PRT_TMP "$prtpl_word\n";
						close(PRT_TMP);
						system("lt-proc -a -c $ARGV[5] <  $tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/prtpl_word > $tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/prtpl_anal");
						open(PRT,"<$tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/prtpl_anal") ||  die "Can't open file $tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/prtpl_anal";
						$line=<PRT>;
						$line =~ /\/[^\/]+\/([^<]+)<cat:v/;
						close(PRT);
						$root=$1;
						$tam="yA_huA";
						$per="a";
						
						&generate($root,$tam,$gen,$num,$per);
					}
					else{
					
						$word =~ /\^([^<]+)_(.*)/;
						$kriyA_mula=$1;
						$aper_input="^".$2;
						open(APER_TMP,">$tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/tmp_aper_input") || die "Can't open file tmp_aper_input\n";
						print APER_TMP "$aper_input";
						close(APER_TMP);
						print "$kriyA_mula ";
						system("lt-proc -cg $ARGV[0] < $tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/tmp_aper_input");
						print " ";
					}
				}
				else{
					$aper_input=$word;
					open(APER_TMP,">$tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/tmp_aper_input") || die "Can't open file tmp_aper_input\n";
					print APER_TMP "$aper_input";
					close(APER_TMP);
					system("lt-proc -cg $ARGV[0] < $tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/tmp_aper_input");
					print " ";
				}
			}
			elsif($word =~ /root/) {
				
				#remove "Z" from hindi words.not if it's english word (start with @)
				if($word !~ /\@/){$word =~ s/Z//;}
				
				$word =~ /root:(.*),tam:(.*),gen:(.*),num:(.*),per:([^\)]*)/;
				$root=$1;
				$tam=$2;
				$gen=$3;
				$num=$4;
				$per=$5;

				&generate($root,$tam,$gen,$num,$per);
				print " ";
			}
			else{print "$word";print " ";}
		}
		print ")";
	}     
}
print "\n\n";
sub generate {
	my $root=$_[0];
	my $tam=$_[1];
	my $gen=$_[2];
	my $num=$_[3];
	my $per=$_[4];
	
	open(APT,">$tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/apertium_input") || die "Can't open file apertium_input\n";
	$tam =~ /^([^_]+)/;
	$aper_tam=$1;
	
	
	$kriyA_mula = "";

	#for handling kriyamula verbs
	if($root =~ /_/){ 	
		$root =~ /(.*)\_([^_]+)$/;
	
		$kriyA_mula = $1;
		$aper_root = $2;
		#$aper_root =~ s/nA$//;
	}
	else { $kriyA_mula="";$aper_root = $root;}


	#change the yA1 form to yA for Alltam.txt but yA1 to apertium as it is.
	if(($tam =~ /yA1/) && ($aper_root eq "jA")){$tam =~ s/yA1/yA/;}

	#if tam=0 don't pass it to the apertium. pass the root form as it is.
	if($aper_tam eq 0){ print "$root ";}
	elsif($aper_tam eq "ne"){ 

			print "$root$aper_tam ";}

  elsif($tam =~ /adv_we_hue|we_rahanA_hE/){

    print APT "\^$aper_root<cat:v><gen:$gen><num:$num><per:$per><tam:$tam>\$ ";
    close(APT);
    if($kriyA_mula ne ""){
      if($kriyA_mula =~ /calA$|KadA$/){ $kriyA_mula =~ s/A$/I/;}

      print "$kriyA_mula";print" ";}
    system("lt-proc -c -g $ARGV[0] < $tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/apertium_input");
  }

  else{

#if tam is multiword and gnp is (f,p,a), then pass  (tam,fsa) to apertium. and (tam,fpa) in tam database.
    if($kriyA_mula ne ""){
      if(($gen eq "f") && ($kriyA_mula =~ /calA$|KadA$/)){ $kriyA_mula =~ s/A$/I/;}

      print "$kriyA_mula";print" ";}

    if(($tam =~ /_/)&&($gen eq "f") && ($num eq "p") && ($per eq "a")){
      print APT "\^$aper_root<cat:v><gen:f><num:s><per:a><tam:$aper_tam>\$ ";
      close(APT);
#  if($kriyA_mula ne ""){print "$kriyA_mula";print" ";}
      system("lt-proc -c -g $ARGV[0] < $tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/apertium_input");
    }
    else{
      print APT "\^$aper_root<cat:v><gen:$gen><num:$num><per:$per><tam:$aper_tam>\$ ";
      close(APT);
#      if($kriyA_mula ne ""){print "$kriyA_mula";print" ";}
      system("lt-proc -c -g $ARGV[0] < $tmp_dir_path\/$ARGV[3]_tmp\/$ARGV[4]\/apertium_input");
    }
  }

#if((($tam =~ /_/) || ($tam =~ /^hE$/)) & ($tam !~ /^adv_we_hue$|^we_rahanA_hE$/)){	
#removed ^hE$ from above as the output of "I have three brothers" is coming wrong.
  if(($tam =~ /_/) && ($tam !~ /^adv_we_hue$|^we_rahanA_hE$/)){	

    tie(%TAM,GDBM_File,$ARGV[1],GDBM_READER,0644) || die "Can't open AllTam.gdbm for reading";
    $tam_key=$tam.",".$gen.",".$num.",".$per;

    if($TAM{$tam_key}) {
      if($TAM{$tam_key} ne "NULL"){
        $tam=$TAM{$tam_key};
        $tam =~ s/_/ /g;
        print "$tam";}
    }
    else { print STDERR "$tam_key----TAM NOT FOUND";}
  }

}
