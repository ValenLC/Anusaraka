 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/prawiniXi.clp"))
 (load ?*path*)
 (load-facts "E_constituents_info_tmp2.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (load-facts "sd_word.dat")
 (run)
 (save-facts "prawiniXi.dat" local head_id-prawiniXi_id-grp_ids)
 (clear)
 ;----------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/English_sentence.bclp"))
 (bload ?*path*)
 (load-facts "word.dat")
 (load-facts "vibakthi_info.dat")
 (load-facts "punctuation_info.dat")
 (load-facts "hindi_id_order.dat")
 (open "hin_eng_sent.dat" e_sen_fp "a")
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
 (open "hindi_sentence.dat" h_sen_fp "a")
 (run)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/alignment/eng_hin_pos.clp"))
 (load ?*path*)
 (load-facts "Eng_id_order.dat")
 (load-facts "hindi_id_order.dat")
 (load-facts "lwg_info.dat")
 (load-facts "GNP_agmt_info.dat")
 (load-facts "hindi_meanings.dat")
 (load-facts "hindi_meanings_tmp1.dat")
 (load-facts "original_word.dat")
 (load-facts "id_Apertium_output.dat")
 (assert (index 1))
 (assert (English_Sen))
 (open "position.dat" pos_fp "a")
 (run)
 (close pos_fp)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/alignment/eng_id_in_hin_ord.clp"))
 (load ?*path*)
 (load-facts "hindi_punctuation.dat")
 (load-facts "position.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (load-facts "E_constituents_info_tmp.dat")
 (load-facts "Node_category_tmp.dat")
 (load-facts "sd_word_tmp.dat")
 (load-facts "sd-basic_relations_tmp1.dat")
 (open "eng_id_in_hin_ord.dat" fp3 "a")
 (assert (index 1))
 (assert (hindi_order ))
 (run)
 (close fp3)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/alignment/get_wx.clp"))
 (load ?*path*)
 (load-facts "hindi_meanings.dat")
 (load-facts "wx_output.dat")
 (load-facts "word.dat")
 (run)
 (save-facts "hin_mng_without_@.dat" local id-HM-source)
 (save-facts "wx_agrep_output.dat" local eng_word-man_wx_word)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/alignment/get_anu_grp_mng.clp"))
 (load ?*path*)
 (load-facts "id_Apertium_output.dat")
; (load-facts "hindi_meanings.dat")
 (load-facts "hin_mng_without_@.dat")
 (load-facts "GNP_agmt_info.dat")
 (open "anu_grp_mng.dat" ap_grp_fp "w")
; (open "hin_mng_without_@.dat" h_m_fp "w")
 (open "aper_op_without_@.dat" ap_fp "w")
 (run)
 (close ap_fp)
 (close ap_grp_fp)
; (close h_m_fp)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/alignment/get_man_grp_mng.clp"))
 (load ?*path*)
 (load-facts "shallow_parser_GNP_info.dat")
 (load-facts "shallow_parser_output.dat.tmp7")
 (open  "manual_group_mng.dat" vb_fp "a")
 (run)
 (close vb_fp)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/alignment/alignment.clp"))
 (load ?*path*)
 (load-facts "manual_group_mng.dat")
 (load-facts "anu_grp_mng.dat")
 (load-facts "wx_agrep_output.dat")
 (load-facts "manual_hindi_sen.dat")
 (load-facts "hin_mng_without_@.dat")
 (load-facts "revised_root.dat")
 (load-facts "aper_op_without_@.dat")
 (open  "alignment_debug.dat" alig_fp "a")
 (assert (index 1))
 (run)
 (close alig_fp)
 (save-facts "alignment.dat" local anu_id-a_grp_mng-sep-manual_id-m_grp_mng)
 (save-facts "final_maual_sen.dat" local manual_hin_sen)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/alignment/word_alignment.clp"))
 (load ?*path*)
 (load-facts "alignment.dat")
 (load-facts "manual_group_mng.dat")
 (load-facts "aper_op_without_@.dat")
 (load-facts "hin_mng_without_@.dat")
 (load-facts "wx_agrep_output.dat")
 (load-facts "GNP_agmt_info.dat")
 (run)
 (save-facts "word_alignment.dat" local anu_id-anu_mng-sep-man_id-man_mng)
 (clear)
 (exit)
