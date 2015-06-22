 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/English_sentence.bclp"))
 (bload ?*path*)
 (load-facts "word.dat")
 (load-facts "vibakthi_info.dat")
 (load-facts "punctuation_info.dat")
 (load-facts "hindi_id_order.dat")
 (open "hin_eng_sent.dat" e_sen_fp "w")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/hindi_sentence.bclp"))
 (bload ?*path*)
 (load-facts "word.dat")
 (load-facts "parser_type.dat")
 (load-facts "id_Apertium_output.dat")
 (load-facts "hindi_id_order.dat")
 (load-facts "hindi_punctuation.dat")
 (load-facts "punctuation_info.dat")
 (load-facts "original_word.dat")
 (load-facts "underscore_hyphen_replace_info.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "GNP_agmt_info.dat")
 (load-facts "hindi_meanings.dat")
 (open "hindi_sentence_tmp.dat" h_sen_fp "w")
 (open "removed_repeated_mng.dat" rm_mng_fp "w")
 (run)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/eng_hin_pos.clp"))
 (load ?*path*)
 (load-facts "Eng_id_order.dat")
 (load-facts "hindi_id_order.dat")
 (load-facts "lwg_info.dat")
 (load-facts "GNP_agmt_info.dat")
 (load-facts "hindi_meanings.dat")
 (load-facts "hindi_meanings_with_grp_ids.dat")
 (load-facts "original_word.dat")
 (load-facts "id_Apertium_output.dat")
 (assert (index 1))
 (assert (English_Sen))
 (open "position.dat" pos_fp "w")
 (run)
 (save-facts "Eng_sen_without_punct.dat" local English_Sen)
 (close pos_fp)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/MINION/alignment/get_dbase_mng.clp"))
 (load ?*path*)
 (load-facts "revised_root.dat")
 (load-facts "original_word.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "lwg_info.dat")
 (load-facts "sen_phrase.dat")
 (load-facts "Eng_sen_without_punct.dat")
 (load-facts "word.dat")
 (assert (default-cat))
 (run)
 (save-facts "database_mng.dat" local id-org_wrd-root-dbase_name-mng e_tam-id-dbase_name-mng id-multi_word_expression-dbase_name-mng multi_word_expression-grp_ids id-left_word-possible_mngs id-right_word-possible_mngs)
 (save-facts "database_original_mng.dat" local database_info tam_database_info id-left_word-possible_mngs id-right_word-possible_mngs)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/phrasal_alignment/get_manual_id_and_group.clp"))
 (load ?*path*)
 (load-facts "manual_hindi_sen.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "database_original_mng.dat")
 (load-facts "chunk_info.dat")
 (load-facts "manual_hin.morph.dat")
 (run)
 (save-facts "manual_word.dat" local manual_id-word)
 (save-facts "manual_noun_grp.dat" local manual_word_info)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/phrasal_alignment/get_verb_and_phrasal_grp.clp"))
 (load ?*path*)
 (load-facts "chunk_info.dat")
 (load-facts "manual_noun_grp.dat")
 (load-facts "manual_word.dat")
 (load-facts "database_original_mng.dat")
 (load-facts "manual_hin.morph.dat")
 (load-facts "id_Apertium_output.dat")
 (load-facts "hindi_meanings.dat")
 (load-facts "word-alignment-hi-en.dat")
 (load-facts "word-alignment.dat")
 (load-facts "GNP_agmt_info.dat")
 (run)
 (save-facts "chunk_info1.dat" local chunk_name-chunk_ids-words)
 (save-facts "manual_lwg.dat" local manual_word_info)
 (save-facts "word-alignment_new.dat" local anu_id-anu_mng-man_mng)
 (save-facts "word-alignment-hi-en_new.dat" local eng_id-eng_wrd-man_wrd)
 (save-facts "hin_mng_without_@.dat" local id-HM-source)
 (save-facts "aper_op_without_@.dat" local id-Apertium_output)
 (clear)
 ;--------------------------------------------------------------------------
; (load "global_path.clp")
; (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/phrasal_alignment/get_word_potential_facts.clp"))
; (load ?*path*)
; (load-facts "word.dat")
; (load-facts "manual_word.dat")
; (load-facts "hindi_id_order.dat")
; (load-facts "manual_lwg.dat")
; (load-facts "lwg_info.dat")
; (load-facts "potential_assignment.dat")
; (load-facts "word_alignment_tmp.dat")
; (load-facts "multi_word_expressions.dat")
; (load-facts "proper_noun_dic.dat")
; (watch facts)
; (watch rules)
; (run)
; (save-facts "potential_facts.dat" local man_id-candidate_ids anu_id-candidate_ids)
; (save-facts "restricted_word_mngs.dat" local man_id-word-possible_mngs anu_id-word-possible_mngs)
; (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/phrasal_alignment/get_heuristics.clp"))
 (load ?*path*)
 (load-facts "manual_word.dat")
 (load-facts "manual_hindi_sen.dat")
 (load-facts "manual_hin.morph.dat")
 (load-facts "word-alignment_new.dat")
 (load-facts "database_mng.dat")
 (load-facts "revised_root.dat")
 (load-facts "GNP_agmt_info.dat")
 (load-facts "word.dat")
 (load-facts "original_word.dat")
 (load-facts "chunk_info1.dat")
 (load-facts "chunk_info.dat")
 (load-facts "transliterated_words_list.dat")
 (load-facts "hin_mng_without_@.dat")
 (load-facts "aper_op_without_@.dat")
 (load-facts "manual_lwg.dat")
 (load-facts "database_original_mng.dat")
 (load-facts "Eng_id_order.dat")
 (load-facts "word-alignment-hi-en_new.dat")
 (load-facts "sd_scope.dat")
 (assert (anu_verb_count-verbs 0))
 (assert (man_verb_count-verbs 0))
 (assert (heuristics anu_exact_match anu_exact_match_without_vib anu_partial_match dictionary_match dictionary_match_without_vib hindi_wordnet_match single_verb_match kriyA_mUla_partial_match english_word_match transliteration_match scope M_layer_pharasal_match L_layer_pharasal_match))
 (open "slot_debug_input.txt" s_fp "a")
 (run)
 (save-facts "align_debug_source.dat" local anu_id-man_id-root-src-rule_name no_match_found)
 (close s_fp)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/phrasal_alignment/get_score.clp"))
 (load ?*path*)
 (load-facts "align_debug_source.dat")
 (assert (heuristic-weightage anu 5))
 (assert (heuristic-weightage dictionary 2))
 (assert (heuristic-weightage hindi_wordnet 2))
 (assert (heuristic-weightage single_verb_match 3))
 (assert (heuristic-weightage kriyA_mUla_with_dic 2))
 (assert (heuristic-weightage anu_partial 1))
 (assert (heuristic-weightage english_word_match 1))
 (assert (heuristic-weightage transliterate_match 1))
 (assert (heuristic-weightage scope 1))
 (assert (heuristic-weightage L_layer_pharasal_match 1))
 (assert (heuristic-weightage M_layer_pharasal_match 1))
 (run)
 (save-facts "align_score.dat" local score)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/phrasal_alignment/alignment.clp"))
 (load ?*path*)
 (load-facts "manual_word.dat")
 (load-facts "aper_op_without_@.dat")
 (load-facts "align_debug_source.dat")
 (load-facts "align_score.dat")
 (load-facts "manual_lwg.dat")
 (load-facts "hin_mng_without_@.dat")
 (run)
 (save-facts "word_alignment_tmp.dat" local alignment)
 (save-facts "left_over_ids.dat" local left_over_ids)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/phrasal_alignment/alignment1.clp"))
 (load ?*path*)
 (load-facts "manual_lwg.dat")
 (load-facts "align_score.dat")
 (load-facts "word_alignment_tmp.dat")
 (load-facts "chunk_info1.dat")
 (load-facts "chunk_info.dat")
 (load-facts "left_over_ids.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "aper_op_without_@.dat")
 (load-facts "hindi_id_order.dat")
 (load-facts "multi_word_expressions.dat")
 (load-facts "manual_word.dat")
 (load-facts "manual_hin.morph.dat")
 (load-facts "word-alignment-hi-en_new.dat")
 (load-facts "lwg_info.dat")
 (open "total-left-over.dat" lf "a")
 (run)
 (save-facts "word_alignment.dat" local alignment)
 (clear)
 (exit)
