 (defglobal ?*agrmt_file* = agrmt_fp)
 (defglobal ?*agrmt_debug* = agrmt_db)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (defrule end
 (declare (salience -2000))
 =>
        (close  ?*agrmt_file*)
        (close ?*agrmt_debug*)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Verb agrees with last id of subject with head_id "or"
 ;Ex. Are John or I invited ?
 (defrule sub_or_agr
 (declare (salience 1100))
 (pada_info (group_head_id ?root_id)(group_cat VP))
 (or (kriyA-subject ?root_id ?x)(kriyA-aBihiwa  ?root_id ?x))
 (pada_info (group_cat ?cat)(group_head_id ?x)(vibakthi 0) (group_ids $?ids))
 (id-original_word ?x or)
 ?f0<-(agmt_control_fact ?root_id)
 (test (neq ?cat English_PP))
 =>
        (bind ?last_id (nth$  (length $?ids) $?ids))
        (retract ?f0)
        (printout  ?*agrmt_file* "(verb_agrmt-subject_id-head_id  or_subject  "?last_id" "?root_id ")" crlf )
	(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-subject_id-head_id  sub_or_agr   or_subject  "?last_id" "?root_id ")" crlf )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ; Verb agrees with: With Subject(karwA), If it has 0 prasarg.
 ; if subject has vibhakti
 (defrule sub_agrmt
 (declare (salience 1000))
 (pada_info (group_head_id ?root_id)(group_cat VP))
 (or (kriyA-subject ?root_id ?x)(kriyA-aBihiwa  ?root_id ?x))
 (pada_info (group_cat ?cat)(group_head_id ?x)(vibakthi 0))
 ?f0<-(agmt_control_fact ?root_id)
 (test (neq ?cat English_PP))
 =>
        (retract ?f0)
        (printout  ?*agrmt_file* "(verb_agrmt-subject_id-head_id  subject  "?x" "?root_id ")" crlf )
	(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-subject_id-head_id  sub_agrmt   subject "?x" "?root_id ")" crlf )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Verb agrees with:With Object(Karma), If it has 0 prasarg.
 (defrule obj_agrmt
 (declare (salience 900))
 (pada_info (group_head_id ?root_id)(group_cat VP))
 (or(kriyA-object ?root_id ?x)(kriyA-object_2 ?root_id ?x))
 (pada_info (group_cat ?cat)(group_head_id ?x)(vibakthi 0))
 ?f0<-(agmt_control_fact ?root_id)
 (test (neq ?cat English_PP))
 =>
        (retract ?f0)
        (printout ?*agrmt_file* "(verb_agrmt-object_id-head_id  object " ?x" " ?root_id ")" crlf )
	(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-object_id-head_id  obj_agrmt   object " ?x" " ?root_id ")" crlf )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Verb agrees with:With kriyA_mUla
 (defrule kriyA_mUla_agrmt
 (declare (salience 800))
 (pada_info (group_head_id ?root_id)(group_cat VP))
 (id-HM-source ?root_id ?hmng ?)
 ?f0<-(agmt_control_fact ?root_id)
 =>
        (bind ?gen (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng))
        (if (neq ?gen "FALSE") then
                (retract ?f0)
                (printout  ?*agrmt_file* "(verb_agrmt-head_id  kriyA_mula " ?root_id " " ?gen ")" crlf )
		(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-head_id   kriyA_mUla_agrmt kriyA_mula " ?root_id " " ?gen ")" crlf )
        )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Default verb form (m,s,anya)
 (defrule def_agrmt
 (declare (salience 700))
 (pada_info (group_head_id ?root_id)(group_cat VP))
 ?f0<-(agmt_control_fact ?root_id)
 =>
        (retract ?f0)
        (printout  ?*agrmt_file* "(verb_agrmt-head_id  default "   ?root_id")" crlf )
	(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-head_id  def_agrmt  default "   ?root_id")" crlf )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (deffacts dummy_facts 
 (kriyA-due_to_saMbanXI) 
 (viSeRya-than_saMbanXI) 
 (relation-anu_ids) 
 (relation-parser_ids) 
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
 (viSeRya-since_saMbanXI) 
 (kriyA-out_saMbanXI) 
 (viSeRya-near_saMbanXI) 
 (passive_kriyA) 
 (kriyA-out_saMbanXI) 
 (viSeRya-according_saMbanXI) 
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
 (kriyA_viSeRaNa-viSeRaka) 
 (pUrvakAlika_kriyA-ananwarakAlika_kriyA) 
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
 (passive_kriyA-object)
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
 (kriyA-through_saMbanXI) 
 (more_upameya-than_upamAna)
 (id-wsd_root) 
 (kriyA-into_saMbanXI) 
 (AjFArWaka_kriyA)
 (No complete linkages found)
 (id-cat)
 (id-cat_coarse)
 (link_name-link_expansion)
 (link_name-lnode-rnode)
 (H_Mother-id_Daughters)
 (to_be_included_in_paxa)
 (id-word)
 (root-verbchunk-tam-chunkids)
 (Node-Category)
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
 )
 ;--------------------------------------------------------------------------------------------------------------------
