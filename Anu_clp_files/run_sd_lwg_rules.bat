 (load "global_path.clp")
  (defglobal ?*path1* = ?*path*)
  (bind ?*path* (str-cat ?*path* "/Anu_clp_files/sd_lwg_rules.clp"))
  (load* ?*path*)
  (load-facts "sd-relations_tmp1.dat")
  (load-facts "sd-basic_relations_tmp1.dat")
  (load-facts "sd_word_tmp.dat")
  (load-facts "preferred_morph_tmp.dat")
  (load-facts "morph.dat")
  (load-facts "parser_pos_cat.dat")
  (assert (English-list))
  (assert (index P1))
  (open "lwg_debug.dat" lwg_db_fp "a")
  (run)
  (save-facts "lwg_info_tmp.dat" local root-verbchunk-tam-parser_chunkids  verb_type-verb-causative_verb-tam)
  (close lwg_db_fp)
  (clear)

