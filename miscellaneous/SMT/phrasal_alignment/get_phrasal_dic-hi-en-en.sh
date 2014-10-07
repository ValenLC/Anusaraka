MYPATH=`pwd`
Phrasal_align_path=$HOME_anu_test/miscellaneous/SMT/phrasal_alignment
Multifast_path=$HOME_anu_test/multifast-v1.0.0/src
rm -rf $Phrasal_align_path/hi-en
mkdir $Phrasal_align_path/hi-en

### Creating Phrase dictionary::
cut -f1 -d'|' $1 > f1
cut -f4 -d'|' $1 > f4
cut -f7 -d'|' $1 > f7
cut -f10 -d'|' $1 > f10
cut -f11-1000 -d'|' $1 > f11
sed -i 's/ $/ ||| /g' f1 
sed -i 's/ $/ ||| /g' f4 
sed -i 's/^ //g' f4
sed -i 's/ $/ |/g' f7 
sed -i 's/^ //g' f10
sed -i 's/ $/ |||/g' f10 
paste f4 f1 f10 f7 f11 > f4-1
sed -i 's/\t//g' f4-1
#exit
export LC_ALL=C
sort -u f4-1 > f4-1.sort
./phrase_gdbm_dict.out f4-1.sort $Phrasal_align_path/hi-en/Hin-Eng-dic.txt1
cut -f1 $Phrasal_align_path/hi-en/Hin-Eng-dic.txt1 > f1
cut -f2 $Phrasal_align_path/hi-en/Hin-Eng-dic.txt1 > f2
sed "s/'_s_/'s_/g" f2 > f2-1
paste f1 f2-1 > $Phrasal_align_path/hi-en/Hin-Eng-dic.txt2
grep -v "^$" $Phrasal_align_path/hi-en/Hin-Eng-dic.txt2 > $Phrasal_align_path/hi-en/Hin-Eng-dic.txt

### Creating Word to word dictionary::
python create_SL-TL_dict_using_phrase_table.py  f4-1.sort  en  hi
cut -f1 -d'|' f4-1.sort > f1
cut -f4 -d'|' f4-1.sort > f4
paste f1 f4 > f1-4
sed 's/ /_/g' f1-4 | sed 's/^/_/g' | sed 's/\t//g' > f1-4.txt
paste f1-4.txt en-hi_dict.txt  > $Phrasal_align_path/hi-en/Word-to-word-hi-en.txt

### Creating Multifast format dictionary::
cd $Multifast_path
cut -f1  $Phrasal_align_path/hi-en/Hin-Eng-dic.txt  > f1
grep -v "^$" f1 > f1-1
sed 's/ \[/\t[/'  f1-1 | sed 's/ /##/g' | sed 's/__/_/g'  | sed 's/^_//g' | sed 's/_$//g' | sed 's/"/\\"/g' > tmp
./get_word_count_single.out  tmp > tmp1
sed 's/##//g' tmp1 | sed 's/\t/_",0, {stringy: "/g' | sed 's/^/\t{"_/g' | sed 's/$/"}},/g' > tmp2
sed '1i\AC_PATTERN_t allpattern[] = {'  tmp2 > tmp3
sed '$a\};'   tmp3  > extract_key-hi-en.c
