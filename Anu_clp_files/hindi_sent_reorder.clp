 (defglobal ?*DBUG* =  h_id_reorder_fp )

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0))) 

 (deffacts dummy_facts 
 (lupwa_subject_kriyA-subject_samAnAXikaraNa)
 (kriyA-in_keeping_with_saMbanXI) 
 (viSeRya-throughout_saMbanXI) 
 (viSeRya-except_saMbanXI) 
 (kriyA-except_saMbanXI) 
 (viSeRya-amongst_saMbanXI) 
 (viSeRya-till_saMbanXI) 
 (kriyA-till_saMbanXI) 
 (kriyA-amongst_saMbanXI) 
 (kriyA-wh_word_hewuvAcI) 
 (kriyA-next_to_saMbanXI)
 (viSeRya-a_saMbanXI) 
 (kriyA-in_proportion_to_saMbanXI) 
 (viSeRya-instead_saMbanXI)
 (kriyA-instead_of_saMbanXI) 
 (viSeRya-across_saMbanXI) 
 (kriyA-in_front_of_saMbanXI) 
 (kriyA-side_saMbanXI) 
 (kriyA-without_reference_to_saMbanXI) 
 (viSeRya-through_saMbanXI) 
 (kriyA-in_the_form_of_saMbanXI) 
 (kriyA-per_saMbanXI) 
 (kriyA-out_of_saMbanXI) 
 (viSeRya-next_to_saMbanXI) 
 (kriyA-regardless_of_saMbanXI) 
 (viSeRya-per_saMbanXI) 
 (kriyA-in_response_to_saMbanXI) 
 (kriyA-on_the_right_side_of_saMbanXI) 
 (kriyA-for_the_sake_of_saMbanXI) 
 (kriyA-along_with_saMbanXI) 
 (kriyA-from_inside_saMbanXI) 
 (missing-level-id) 
 (id-original_word) 
 (id-number-src) 
 (verb_type-verb-causative_verb-tam) 
 (addition-level-word-sid) 
 (kriyA-according_to_saMbanXI) 
 (viSeRya-emphatic_marker) 
 (viSeRya-according_saMbanXI) 
 (kriyA-out_saMbanXI) 
 (viSeRya-near_saMbanXI) 
 (passive_kriyA) 
 (kriyA-out_saMbanXI) 
 (viSeRya-since_saMbanXI) 
 (id-cat) 
 (kriyA-according_saMbanXI) 
 (conjunction-components)
 (viSeRya-as_well_as_saMbanXI) 
 (kriyA-infinitive_vAkyakarma) 
 (kriyA-kqxanwa_kriyA_viSeRaNa) 
 (kriyA-kqxanwa_karma) 
 (kriyA-samakAlika_kriyA) 
 (niReXawmaka_vAkya) 
 (id-wsd_number) 
 (viSeRya-in_front_of_saMbanXI) 
 (viSeRya-in_front_saMbanXI) 
 (viSeRya-all_over_saMbanXI) 
 (kriyA-amidst_saMbanXI) 
 (affecting_id-affected_ids-wsd_group_root_mng)
 (affecting_id-affected_ids-wsd_group_word_mng)
 (id-last_word) 
 (saMjFA-saMjFA_samAnAXikaraNa) 
 (kqxanwa-of_saMbanXI) 
 (kriyA-because_saMbanXI) 
 (saMKyA-saMKyA) 
 (viSeRaNa-viSeRaka) 
 (viSeRya-but_saMbanXI) 
 (kriyA-now_saMbanXI) 
 (subject-object_samAnAXikaraNa) 
 (kqxanwa-kqxanwa) 
 (viSeRya-to_saMbanXI) 
 (viSeRya-jo_samAnAXikaraNa) 
 (viSeRya-about_saMbanXI) 
 (kriyA-ago_saMbanXI) 
 (viSeRya-viSeRaka) 
 (kriyA-where_saMbanXI) 
 (kriyA-kqxanwa_vAkyakarma) 
 (kriyA-jo_type_object) 
 (nirXArya-nirXAraNa) 
 (nirXArya-nirXAraNa) 
 (kriyA-sentence_opener) 
 (to-infinitive) 
 (kriyA_viSeRaNa-ke_liye) 
 (pUrvakAlika_kriyA-ananwarakAlika_kriyA)
 (kriyA_viSeRaNa-viSeRaka) 
 (kriyA_viSeRaNa-viSeRaka) 
 (saMjFA-about_saMbanXI) 
 (saMjFA-to_saMbanXI) 
 (saMKyA_idiom) 
 (viSeRya-kiwanA_viSeRaNa) 
 (hara-samayvAcaka_Sabxa) 
 (wulya_upameya-upamAna) 
 (kriyA-across_saMbanXI) 
 (less_upameya-than_upamAna) 
 (saMjFA-upon_saMbanXI) 
 (kriyA-but_saMbanXI) 
 (kriyA-throughout_saMbanXI) 
 (kqxanwa_kriyA-to_saMbanXI) 
 (kriyA-since_saMbanXI) 
 (samayvAcaka_Sabxa-ke_bAxa) 
 (dummy_viSeRya-jo_samAnAXikaraNa) 
 (kiwanA) 
 (dummy_subject-subject_samAnAXikaraNa) 
 (kriyA-whatever_saMbanXI) 
 (object-kqxanwa_kriyA) 
(kriyA-kAlavAcI)
 (kqxanwa_kriyA-of_saMbanXI)
 (kqxanwa_kriyA-against_saMbanXI)
 (kqxanwa_kriyA-on_saMbanXI)
 (kqxanwa_kriyA-for_saMbanXI)
 (kqxanwa_kriyA-from_saMbanXI)
 (kqxanwa_kriyA-by_saMbanXI)
 (kqxanwa_kriyA-as_saMbanXI)
 (kqxanwa_kriyA-about_saMbanXI)
 (kqxanwa_kriyA-aboard_saMbanXI)
 (kqxanwa_kriyA-above_saMbanXI)
 (kqxanwa_kriyA-after_saMbanXI)
 (kqxanwa_kriyA-along_saMbanXI)
 (kqxanwa_kriyA-amid_saMbanXI)
 (kqxanwa_kriyA-among_saMbanXI)
 (kqxanwa_kriyA-anti_saMbanXI)
 (kqxanwa_kriyA-around_saMbanXI)
 (kqxanwa_kriyA-at_saMbanXI)
 (kqxanwa_kriyA-before_saMbanXI)
 (kqxanwa_kriyA-behind_saMbanXI)
 (kqxanwa_kriyA-below_saMbanXI)
 (kqxanwa_kriyA-beneath_saMbanXI)
 (kqxanwa_kriyA-beside_saMbanXI)
 (kqxanwa_kriyA-besides_saMbanXI)
 (kqxanwa_kriyA-between_saMbanXI)
 (kqxanwa_kriyA-beyond_saMbanXI)
 (kqxanwa_kriyA-despite_saMbanXI)
 (kqxanwa_kriyA-down_saMbanXI)
 (kqxanwa_kriyA-during_saMbanXI)
 (kqxanwa_kriyA-inside_saMbanXI)
 (kqxanwa_kriyA-into_saMbanXI)
 (kqxanwa_kriyA-in_saMbanXI)
 (kqxanwa_kriyA-like_saMbanXI)
 (kqxanwa_kriyA-off_saMbanXI)
 (kqxanwa_kriyA-off_saMbanXI)
 (kqxanwa_kriyA-onto_saMbanXI)
 (kqxanwa_kriyA-opposite_saMbanXI)
 (kqxanwa_kriyA-outside_saMbanXI)
 (kqxanwa_kriyA-over_saMbanXI)
 (kqxanwa_kriyA-toward_saMbanXI)
 (kqxanwa_kriyA-towards_saMbanXI)
 (kqxanwa_kriyA-under_saMbanXI)
 (kqxanwa_kriyA-underneath_saMbanXI)
 (kqxanwa_kriyA-unlike_saMbanXI)
 (kqxanwa_kriyA-under_saMbanXI)
 (kqxanwa_kriyA-up_saMbanXI)
 (kqxanwa_kriyA-upon_saMbanXI)
 (kqxanwa_kriyA-versus_saMbanXI)
 (kqxanwa_kriyA-via_saMbanXI)
 (kqxanwa_kriyA-with_saMbanXI)
 (kqxanwa_kriyA-within_saMbanXI)
 (kqxanwa_kriyA-without_saMbanXI)
 (viSeRaNa-hogA) 
 (uwanA) 
 (kriyA-ne_ke_liye) 
 (kriyA-ne_ke_liye) 
 (kqxanwa-of_viSeRaNa)
 (nAma-saMkRipwa_nAma)
 (kriyA-past_saMbanXI)
 (kriyA-kI_waraha)
 (kriyA-kqxanwa_viSeRaNa)
 (viSeRANa-jyAxA)
 (kriyA_viSeRaNa-ki)
 (yahAz_waka_ki-karwA)
 (samayvAcaka_Sabxa-pahale) 
 (kriyA-before_saMbanXI) 
 (kriyA-viSeRaNa) 
 (kriyA-kriyA_niReXaka) 
 (viSeRya-on_viSeRaNa) 
 (viSeRya-saMKyA_viSeRaNa) 
 (saMjFA-from_viBakwi) 
 (saMjFA-preposition) 
 (kriyA-until_saMbanXI) 
 (kriyA-within_saMbanXI) 
 (kriyA-from_viBakwi) 
 (kriyA-after_saMbanXI) 
 (kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka) 
 (kriyA-around_saMbanXI) 
 (kriyA-karwA) 
 (proper_noun-preposition) 
 (viSeRya-from_viSeRaNa) 
 (kriyA-near_saMbanXI) 
 (honA_kriyA-kI_apekRA) 
 (kriyA-aBiprewa_kriyA) 
 (kriyA-without_saMbanXI) 
 (proper_noun-det_viSeRaNa) 
 (wall_conjunction) 
 (honA_kriyA-passive_kriyA) 
 (kriyA-before_sambanXa) 
 (id-preceeding_part_of_verb) 
 (kriyA-in_sambanXa) 
 (kriyA-of_saMbanXI) 
 (kriyA-about_saMbanXI) 
 (viXi_vAkya) 
 (kriyA-viXi_vAkyakarma) 
 (more_upameya-than_upamAna)
 (kriyA-through_saMbanXI) 
 (kriyA-into_saMbanXI) 
 (AjFArWaka_kriyA)
 (No complete linkages found)
 (proper_noun-waxviSiRta_proper_noun)
 (viSeRya-to_viSeRaNa)
 (kiwane)
 (samAsa)
 (subject_question_wh_type)
 (kriyA-to_saMbanXI)
 (kriyA-against_saMbanXI)
 (kriyA-on_saMbanXI)
 (kriyA-for_saMbanXI)
 (kriyA-from_saMbanXI)
 (kriyA-of_saMbanXI)
 (kriyA-by_saMbanXI)
 (kriyA-as_saMbanXI) ;This list  of prepositions is added from http://www.englishclub.com/vocabulary/prepositions.htm
 (kriyA-about_saMbanXI)
 (kriyA-aboard_saMbanXI)
 (kriyA-above_saMbanXI)
 (kriyA-after_saMbanXI)
 (kriyA-along_saMbanXI)
 (kriyA-amid_saMbanXI)
 (kriyA-among_saMbanXI)
 (kriyA-anti_saMbanXI)
 (kriyA-around_saMbanXI)
 (kriyA-at_saMbanXI)
 (kriyA-before_saMbanXI)
 (kriyA-behind_saMbanXI)
 (kriyA-below_saMbanXI)
 (kriyA-beneath_saMbanXI)
 (kriyA-beside_saMbanXI)
 (kriyA-besides_saMbanXI)
 (kriyA-between_saMbanXI)
 (kriyA-beyond_saMbanXI)
 (kriyA-despite_saMbanXI)
 (kriyA-down_saMbanXI)
 (kriyA-during_saMbanXI)
 (kriyA-inside_saMbanXI)
 (kriyA-into_saMbanXI)
 (kriyA-in_saMbanXI)
 (kriyA-like_saMbanXI)
 (kriyA-off_saMbanXI)
 (kriyA-onto_saMbanXI)
 (kriyA-opposite_saMbanXI)
 (kriyA-outside_saMbanXI)
 (kriyA-over_saMbanXI)
 (kriyA-toward_saMbanXI)
 (kriyA-towards_saMbanXI)
 (kriyA-under_saMbanXI)
 (kriyA-underneath_saMbanXI)
 (kriyA-unlike_saMbanXI)
 (kriyA-under_saMbanXI)
 (kriyA-up_saMbanXI)
 (kriyA-upon_saMbanXI)
 (kriyA-versus_saMbanXI)
 (kriyA-via_saMbanXI)
 (kriyA-with_saMbanXI)
 (kriyA-within_saMbanXI)
 (kriyA-without_saMbanXI)
 (viSeRya-RaRTI_viSeRaNa)
 (kriyA-ke_liye)
 (kriyA-subject)
 (kriyA-aXikaraNa)
 (kriyA-kriyA_viSeRaNa)
 (kriyA-object)
 (kriyA-object_1)
 (kriyA-object_2)
 (kriyA-dummy_subject)
 (kriyA-raised_subject)
 (kriyA-jo_subject)
 (kriyA-kriyArWa_kriyA)
 (kriyA-jEsA)
 (kriyA-upasarga)
 (kriyA-object_samAnAXikaraNa)
 (kriyA-kqxanwa)
 (kriyA-vAkyakarma)
 (subject-vAkya_samAnAXikarNa)
 (kriyA-jEsA_ki)
 (kriyA-wh_object)
 (kriyA-preraka_kriyA)
 (kriyA-measurement)
 (kriyA-praSnavAcI)
 (kriyA-subject_samAnAXikaraNa)
 (viSeRya-viSeRaNa)
 (subject-subject_samAnAXikaraNa)
 (saMjFA-se)
 (object-sarvanAma)
 (subject-sarvanAma)
 (iwanA-viSeRaNa)
 (viSeRya-det_viSeRaNa)
 (sarvanAma-Ora)
 (kiwanA-Ora)
 (kevala-subject)
 (jinameM-se)
 (Ora-object)
 (saMjFA-eka)
 (uwanA-wulanAwmaka_viSeRaNa)
 (to-wh_pronoun)
 (sarvanAma-preposition)
 (jyAxA-xera_waka)
 (saMjFA-RaRTI_saMbanXI)
 (object-object_samAnAXikaraNa)
 (kiwanA-viSeRaNa)
 (hara-saMjFA)
 (jyAxA-kriyA_viSeRaNa)
 (EsA-lagawA_hE)
 (saMjFA/sarvanAma-para)
 (viSeRaNa-kama)
 (jiwanA-wulanAwmaka_viSeRaNa)
 (lagaBaga-parimANavAcI)
 (viSeRANa-ke_rUpa meM)
 (jyAxA-wulanAwmaka_viSeRaNa)
 (viSeRaNa-viSeRaNa_viSeRaka)
 (Ora-jyAxA)
 (jyAxA-preposition)
 (subject-opener)
 (proper_noun-det viSeRaNa)
 (parimANavAcI-viSeRaNa)
 (samayavAcI-jaba)
 (kriyA-ki)
 (saMKyA-se-saMKyA-waka)
 (kriyA-jo_type_subject)
 (kriyA-dummy_object)
 (object-viSeRaNa)
 (kriyA-samayavAcI_object)
 (sAmAnya_vAkya)
 (AjFArWaka_vAkya)
 (indirect_praSnAwmaka vAkya)
 (niReXAwmaka_vAkya)
 (wulnAwmaka_viSeRaNa-hogA)
 (kriyA-by_subject)
 (viSeRya-wulanAwmaka_viSeRaNa)
 (kriyA-away_viBakwi)
 (viSeRya-of_saMbanXI)
 (viSeRya-against_saMbanXI)
 (viSeRya-on_saMbanXI)
 (viSeRya-for_saMbanXI)
 (viSeRya-from_saMbanXI)
 (viSeRya-by_saMbanXI)
 (viSeRya-as_saMbanXI)
 (viSeRya-about_saMbanXI)
 (viSeRya-aboard_saMbanXI)
 (viSeRya-above_saMbanXI)
 (viSeRya-after_saMbanXI)
 (viSeRya-along_saMbanXI)
 (viSeRya-amid_saMbanXI)
 (viSeRya-among_saMbanXI)
 (viSeRya-anti_saMbanXI)
 (viSeRya-around_saMbanXI)
 (viSeRya-at_saMbanXI)
 (viSeRya-before_saMbanXI)
 (viSeRya-behind_saMbanXI)
 (viSeRya-below_saMbanXI)
 (viSeRya-beneath_saMbanXI)
 (viSeRya-beside_saMbanXI)
 (viSeRya-besides_saMbanXI)
 (viSeRya-between_saMbanXI)
 (viSeRya-beyond_saMbanXI)
 (viSeRya-despite_saMbanXI)
 (viSeRya-down_saMbanXI)
 (viSeRya-during_saMbanXI)
 (viSeRya-inside_saMbanXI)
 (viSeRya-into_saMbanXI)
 (viSeRya-in_saMbanXI)
 (viSeRya-like_saMbanXI)
 (viSeRya-off_saMbanXI)
 (viSeRya-onto_saMbanXI)
 (viSeRya-opposite_saMbanXI)
 (viSeRya-outside_saMbanXI)
 (viSeRya-over_saMbanXI)
 (viSeRya-toward_saMbanXI)
 (viSeRya-towards_saMbanXI)
 (viSeRya-under_saMbanXI)
 (viSeRya-underneath_saMbanXI)
 (viSeRya-unlike_saMbanXI)
 (viSeRya-under_saMbanXI)
 (viSeRya-up_saMbanXI)
 (viSeRya-upon_saMbanXI)
 (viSeRya-versus_saMbanXI)
 (viSeRya-via_saMbanXI)
 (viSeRya-with_saMbanXI)
 (viSeRya-within_saMbanXI)
 (viSeRya-without_saMbanXI)
 (yes_no_question)
 (wh_question)
 (subject_question wh_type)
 (kriyA-prayojya_karwA)
 (kriyA-conjunction)
 (kriyA-samAnakAlika_kriyA)
 (idiom_type_1)
 (idiom_type_2)
 (kriyA-aBihiwa)
 (kriyA-aXikaraNavAcI_avyaya)
 (pUrvakAlika_kriyA-ananwarakAlika kriyA)
 (viSeRya-kqxanwa_viSeRaNa)   
 (kriyA-kqxanwa_object)
 (kriyA-nA)
 (kriyA-in_saMbanXI)
 (kriyA-as_saMbanXI)
 (kriyA-with_saMbanXI)
 (kriyA-along_saMbanXI)
 (saMjFA-saMjFA_samAnAikaraNa)
 (kriyA-kriyA_mUla)
 (saMjFA-kqxanwa)
 (subject-vAkyasamAnAXikarNa)
 (hindi_id_order)
 (link_name-lnode-rnode)
 (link_name-link_expansion)
 (id-word)
 (id-cat_coarse)
 (id-cat)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;What is your name? What is the purpose of Dharma? 
 (defrule wh-reorder
 (link_name-lnode-rnode Ws  ?wall  ?wh_word)
 ?f1<-(id-word ?wh_word  what)
 ?f0<-(hindi_id_order  ?wh_word $?NP ?kriyA )
 =>
	(retract ?f0 ?f1)
 	(assert (hindi_id_order $?NP ?wh_word ?kriyA))
	(printout ?*DBUG* "(Rule_Name-ids	wh-reorder	 (hindi_id_order  "  (implode$ $?NP) " " ?wh_word " " ?kriyA "))" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
;What colour is your shirt?
 (defrule wh_without_aux-reorder2
 (declare (salience 100))
 (pada_info (group_head_id ?kriyA)(group_cat VP))
 (pada_info (group_head_id ?vi)(group_cat PP)(group_ids $?grp_ids))
 ?f1<-(id-word ?wh_word  what)
 (kriyA-subject  ?kriyA ?vi)
 (test (member$ ?wh_word $?grp_ids))
 ?f0<-(hindi_id_order  $?start $?grp_ids $?NP ?kriyA $?end)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?start  $?NP $?grp_ids ?kriyA $?end))
        (printout ?*DBUG* "(Rule_Name-ids      wh_without_aux-reorder2      (hindi_id_order  "   (implode$ (create$ $?start $?NP $?grp_ids ?kriyA $?end))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;What did you eat? O/P:  you What eat.  What did you say? O/P: you What say? 
 ;What have the students done. 
 ; In third condition "have and has" are added to handle such sentences.
 ;Where did you put the milk.   
 ;I know a woman who has two children .
 (defrule wh-reorder1
 (declare (salience 200))
 (pada_info (group_head_id ?kriyA)(group_cat VP))
 ?f1<-(id-word ?wh_word  what|when|why|who|how|where)
 (id-word ?aux do|does|did|have|has)
 (not (kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?  ?wh_word)) ;Ex. How quickly did you run?
 (not (wall_conjunction ?wh_word)) ;When we want to hear a music programme on the radio , we have to tune the radio to the correct station .
 ?f0<-(hindi_id_order  $?start ?wh_word $?NP ?kriyA $?end)
 =>
	(retract ?f0 ?f1)
  	(assert (hindi_id_order $?start  $?NP ?wh_word ?kriyA $?end))
	(printout ?*DBUG* "(Rule_Name-ids	wh-reorder1	 (hindi_id_order  "   (implode$ (create$ $?start $?NP ?wh_word ?kriyA $?end))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;I finally figured out why this program is so slow .
 (defrule wh_without_aux-reorder1
; (declare (salience 50))
 (pada_info (group_head_id ?kriyA)(group_cat VP))
 ?f1<-(id-word ?wh_word  what|when|why|who|how|where)
 (not (kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?  ?wh_word)) ;Ex. How quickly did you run?
 (not (wall_conjunction ?wh_word))
  ;When we want to hear a music programme on the radio , we have to tune the radio to the correct station .
 (not (viSeRaNa-viSeRaka  ? ?wh_word)) ;I wonder how big the department is .
 (not (viSeRya-jo_samAnAXikaraNa  ? ?wh_word))
 ?f0<-(hindi_id_order  $?start ?wh_word $?NP ?kriyA $?end)
 (not (id-word =(+ ?wh_word 1) long));How long will it last ? 
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?start  $?NP ?wh_word ?kriyA $?end))
        (printout ?*DBUG* "(Rule_Name-ids      wh_without_aux-reorder1      (hindi_id_order  "   (implode$ (create$ $?start $?NP ?wh_word ?kriyA $?end))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------

 ;Did you take your breakfast? Did you eat? Do they eat?
 (defrule yes-no_question_DO
 (link_name-lnode-rnode Qd  ?wall  ?what)
 ?f1<-(id-word ?what  did|do|does|may|can)
 ?f0 <- (hindi_id_order $?pre ?what $?pos)
 =>
	(retract ?f0 ?f1)
        (assert (hindi_id_order     kyA $?pre $?pos))
 	(printout ?*DBUG* "(Rule_Name-ids	yes-no_question_DO	 (hindi_id_order   kyA "(implode$ $?pre)" "(implode$ $?pos) "))" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;May I go outside .
 (defrule yes-no_question_models
 (link_name-lnode-rnode Qd  ?wall  ?what)
 ?f1<-(id-word ?what  may|can|could|would)
 ?f0 <- (hindi_id_order  $?sent )
 =>
	(retract ?f0 ?f1)
        (assert (hindi_id_order     kyA $?sent))
 	(printout ?*DBUG* "(Rule_Name-ids	yes-no_question_models	 (hindi_id_order   kyA "(implode$ $?sent) "))" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Are you going? Has he been eating?
 (defrule yes-no_question_BE
; ?f1<- (yes_no_question)
 (link_name-lnode-rnode Qd  0  ?what)
 ?f1<-(id-word ?what  will|are|is|was|were|am|shell|can|has|have|had|should)
 ?f0 <- (hindi_id_order  $?sent )
 =>
	(retract ?f0 ?f1 )
	(assert (hindi_id_order     kyA $?sent))
	(printout ?*DBUG* "(Rule_Name-ids	yes-no_question_BE	 (hindi_id_order   kyA "(implode$ $?sent) "))" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Which red book do you want? Whose younger brother did you meet?
 ; Just to remove dummy 'do': O/P -> Which red book you want? Whose younger brother you meet?
 (defrule which-red-book
 (link_name-lnode-rnode Wq  ?wall  ?wh)
 (link_name-link_expansion   ?SI      S I $?)
 (link_name-lnode-rnode ?SI ?do ?subj)
 ?f1<-(id-word ?do  did|do|does)
 ?f0 <- (hindi_id_order  ?wh $?viSeRya-viSeRaNa ?do ?sub $?rest_sent )
 =>
	(retract ?f0 ?f1)
	(assert (hindi_id_order   ?wh $?viSeRya-viSeRaNa ?sub $?rest_sent))
	(printout ?*DBUG* "(Rule_Name-ids	which-red-book	 (hindi_id_order  "(implode$ (create$ ?wh $?viSeRya-viSeRaNa ?sub $?rest_sent)) "))" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Indirect questions
 ;I asked her what she would like to eat .
 ; (id-word is used to retract the ?question_word id (without this it goes into loop)
 (defrule Indirect_question
 (link_name-link_expansion   ?QI      Q I $?)
 (link_name-lnode-rnode ?QI ?verb ?question_word)
 (kriyA-praSnavAcI  ?verb ?question_word)
 (kriyA-object  ?verb_1 ?question_word)
 ?f1<-(id-word ?question_word ?)
 ?f0 <- (hindi_id_order  $?NP ?question_word $?sent ?verb_1 $?rest)
 =>
	(retract ?f0 ?f1)
        (assert (hindi_id_order $?NP  ki $?sent ?question_word ?verb_1 $?rest ))
	(printout ?*DBUG* "(Rule_Name-ids        Indirect_question   (hindi_id_order  "(implode$ (create$  $?NP  ki $?sent  ?question_word ?verb_1 $?rest  )) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Let me go to the market. O/P  #muJako - bAjAra ko jAne xo - .
 ;Let them go to the market. O/P unheM/unako - bAjAra ko jAne xo - .
 ;Let her go to the market. O/P usako/use - bAjAra ko jAne xo - .
 ;Let him go. O/P usako/use jAne xo - .
 (defrule let_me
 (link_name-lnode-rnode  Wi ?wall  ?let)
 (link_name-lnode-rnode I ?let ?kriyA)
 ?f1<-(id-word ?let let)
 ?f0 <- (hindi_id_order $?pre ?object  ?let ?kriyA)
 =>
        (retract ?f0 ?f1)
	(assert (hindi_id_order  ?object $?pre ?kriyA ?let))
        (printout ?*DBUG* "(Rule_Name-ids  let_me  (hindi_id_order  "(implode$ (create$ ?object $?pre ?kriyA ?let))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Let us go to the market. O/P 
 (defrule let_us
 (link_name-lnode-rnode  Wi ?wall  ?let)
 (link_name-lnode-rnode I ?let ?kriyA)
 ?f1<-(id-word ?let let)
 (id-word 2 us)
 ?f0 <- (hindi_id_order $?pre ?kriyA ?let 2 $?post)
 =>
        (retract ?f0 ?f1)
	(assert (hindi_id_order  ?let 2 $?pre ?kriyA  $?post))
        (printout  ?*DBUG* "(Rule_Name-ids        let_us   (hindi_id_order  "(implode$ (create$    ?let 2 $?pre ?kriyA  $?post  )) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; You are lucky that there is no exam today
 ; Apa #BAgyavAna hEM #ki #Aja #parIkRA #nahIM hE
 (defrule det_viSeRaNa_rule
 (viSeRya-det_viSeRaNa  ?v_id ?vn_id)
 ?f1<-(id-word ?vn_id no)
 ?f0 <-(hindi_id_order $?pre ?vn_id $?mid ?v_id  $?post ?kriyA)
 =>
	(retract ?f0 ?f1)
	(assert (hindi_id_order  $?pre  $?mid $?post ?v_id ?vn_id ?kriyA))
        (printout  ?*DBUG* "(Rule_Name-ids       det_viSeRaNa_rule   (hindi_id_order  "(implode$ (create$  $?pre  $?mid $?post ?v_id ?vn_id ?kriyA)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;She is always in a hurry
 (defrule always_rule
 (kriyA-subject  ?kriya  ?sub)
 (kriyA-kriyA_viSeRaNa  ?kriyA ?id)
 (test (and (< ?kriyA ?id) (> ?id ?sub)))
 ?f1<-(id-word ?id  always)
 ?f0 <-(hindi_id_order $?pre ?sub $?ids ?id $?post ?kriyA)
 =>
	(retract ?f0 ?f1)
	(assert (hindi_id_order $?pre ?sub ?id $?ids $?post ?kriyA))
        (printout  ?*DBUG* "(Rule_Name-ids   always_rule  (hindi_id_order  "(implode$ (create$  $?pre ?sub ?id $?ids $?post ?kriyA)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ; I guess you are working very hard.
 (defrule Ce_rule_for_ki
 (link_name-lnode-rnode Ce ?v_id ?id)
 (id-cat_coarse ?v_id verb)
 ?f1<-(id-word ?v_id ?)
 ?f0 <-(hindi_id_order $?pre ?v_id $?post)
 =>
	(retract ?f0 ?f1)
	(assert (hindi_id_order  $?pre ?v_id ki $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   Ce_rule_for_ki   (hindi_id_order  "(implode$ (create$ $?pre ?v_id ki $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by sheetal(18-01-2010).
 (defrule Ce_rule_for_jisa_prakAra_se
 (link_name-lnode-rnode Ce ?way ?sub)
 ?f1<- (id-root ?way way)
 ?f0 <-(hindi_id_order $?hin_order)
 (test (member$ ?sub $?hin_order))
 =>
        (retract ?f0 ?f1)
         (bind ?sub_pos (member$ ?sub $?hin_order))
         (bind $?hin_order (insert$ $?hin_order ?sub_pos jisa_prakAra_se))
         (assert (hindi_id_order $?hin_order))
        (printout  ?*DBUG* "(Rule_Name-ids    Ce_rule_for_jEse   (hindi_id_order  "(implode$ $?hin_order) ")" crlf)
 )
 ; Do it the way you have always done it .
 ; I really like the way you do your hair . 
  ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju(1-12-2009).
 ;Whether we should go to the party is the important question .
 ;instead of variable_name used 1 bcoz of the sen: I wonder whether we should go .
 (defrule Cs_rule_for_yaha
 (link_name-lnode-rnode Cs 1 ?id)
 ?f1<-(id-word 1 whether)
 (kriyA-conjunction ?kri 1)
 ?f0 <-(hindi_id_order $?pre ?kri $?post)
 =>
	(retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?kri yaha $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   Cs_rule_for_yaha   (hindi_id_order  "(implode$ (create$ $?pre ?kri  yaha $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju(4-12-2009).
 ; The big question on everybody's mind is who killed OJ .
 ; If you know who did it , you should tell the teacher .
 (defrule BI_rule_for_ki
 (or (link_name-link_expansion   ?BI      B I $?) (link_name-link_expansion   ?BI  Q I * d))
 (link_name-lnode-rnode ?BI ?v_id ?id)
 (id-cat_coarse ?v_id verb)
 ?f1<-(id-word ?v_id ?)
 ?f0 <-(hindi_id_order $?pre ?v_id $?post)
 (not (hindi_id_order $?ids ?v_id)) ;Joan Smith is president of the company .
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?v_id ki $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   BI_rule_for_ki   (hindi_id_order  "(implode$ (create$ $?pre ?v_id ki $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju(09-12-2009). --- Suggested by Sheetal
 ; If you use that strategy , he will wipe you out . 
 ; If we heat iron it becomes red .
 ;If you were a middle-class American without a job , who would you vote for .
 (defrule CO_rule_for_wo
 (link_name-lnode-rnode CO*s ?lid ?id)
 (link_name-lnode-rnode Cs ?lid ?id1)   
 ?f1<-(id-word ?lid if|when)  ;Modified by Meena (28-10-10) 
 ?f0 <-(hindi_id_order $?pre ?id $?post)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre wo ?id $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   CO_rule_for_wo   (hindi_id_order  "(implode$ (create$ $?pre wo ?id $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
;Since I know English , he spoke to me
 (defrule CO_rule_for_isaliye
 (link_name-lnode-rnode CO*s ?lid ?id)
 ?f1<-(id-word ?lid since) 
 ?f0 <-(hindi_id_order $?pre ?id $?post)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre isaliye ?id $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   CO_rule_for_isaliye   (hindi_id_order  "(implode$ (create$ $?pre isaliye ?id $?post)) ")" crlf)
 )

 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju(23-03-10) --- (suggested by meenaji)
 ;If you were a middle-class American without a job , who would you vote for .
 (defrule wo_rule
 (link_name-lnode-rnode B*w ?lid ?id)
 (kriyA-for_saMbanXI ?kri ?lid)
 (kriyA-subject ?kri ?sub)
 ?f1<-(id-word ?sub ?)
 ?f0 <-(hindi_id_order $?pre ?sub $?post)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre wo ?sub $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   wo_rule   (hindi_id_order  "(implode$ (create$ $?pre wo ?sub $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule remove_ordered_ids
 (declare (salience -500))
 ?f0<-(id-word ?id ?)
 (hindi_id_order $?ids ?id $?ids1)
 =>
   (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------------------------------
  ;He neither plays, nor reads.
  (defrule neither_nor_rule
  (declare (salience -550))
  ?f1<-(id-word ?id nor|or)
  ?f2<-(id-word ?id1 neither|either)
  ?f3<-(pada_info (group_head_id ?id)(group_cat ?gtype)(group_ids $?grp_ids))
  ?f4<-(pada_info (group_head_id ?id1)(group_cat ?gtype1)(group_ids $?grp_id))
  ?f5<-(pada_info (group_head_id ?h_id1)(group_cat VP)(group_ids $?grp_ids1)(preposition ?prep_id1)(Hin_position ?h_pos1))
  ?f6<-(pada_info (group_head_id ?h_id2)(group_cat VP)(group_ids $?grp_ids2)(preposition ?prep_id2)(Hin_position ?h_pos2))
  ?f7<-(hindi_id_order $?ids $?x  ?h_id1  ?h_id2 $?y)
  =>
  (retract ?f1 ?f7)
  (assert (hindi_id_order $?ids  $?x ?id1 ?h_id1  ?id  ?h_id2 $?y))
  (printout ?*DBUG* "(Rule_Name-ids neither_nor_rule (hindi_id_order " (implode$ (create$ $?ids  $x ?id1 ?h_id1 ?id ?h_id2 $?y))"))" crlf)
  )
 ;------------------------------------------------------------------------------------------------------------------
 ;Our program is easier to use than to understand .
 (defrule default_rule
 (declare (salience -600))
 (or (kriyA-subject ? ?subj_id) (kriyA-dummy_subject ? ?subj_id))
 ?f4<-(id-word ?id ~to)
 ?f3<-(pada_info (group_head_id ?id)(group_cat ?gtype)(group_ids $?grp_ids))
 ?f0<-(pada_info (group_head_id ?h_id1)(group_cat ?gtype1)(group_ids $?grp_ids1)(preposition ?prep_id1))
 ?f1<-(pada_info (group_head_id ?h_id2)(group_cat ?gtype2)(group_ids $?grp_ids2)(preposition ?prep_id2))
  (test (and (neq ?h_id1 ?subj_id) (neq ?h_id2 ?subj_id)))
  ?f2<-(hindi_id_order $?ids)
  (test (not (member$ ?id $?ids)))
  (test (and (neq ?id ?prep_id1)(neq ?id ?prep_id2)))
  (test (and (member$ ?h_id1 $?ids)(member$ ?h_id2 $?ids)))
  (test (and (neq ?gtype English_PP)(neq ?gtype1 English_PP)(neq ?gtype2 English_PP)))
  =>
  (retract ?f2 ?f4)
  (bind ?pos (member$ (nth$ 1 $?grp_ids1) $?ids))
  (if (neq ?pos FALSE) then
 	(bind $?ids (insert$ $?ids ?pos $?grp_ids))
  )
  (assert (hindi_id_order $?ids))
  (printout ?*DBUG* "(Rule_Name-ids default_rule (hindi_id_order " (implode$ $?ids)"))" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule hi_order
 (declare (salience -700))
 (hindi_id_order  $?ids)
 =>
        (assert (hindi_id_order   $?ids))
        (printout ?*DBUG* "(Rule_Name-ids  hi_order  (hindi_id_order " (implode$ $?ids)"))" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -800))
 =>
        (close ?*DBUG*)
 )
 ;------------------------------------------------------------------------------------------------------------------
