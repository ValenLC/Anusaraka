(load "path_for_html.clp")
(defglobal  ?*path1* = ?*mypath*)
(bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/MINION/browser/create_man_align_html.clp"))
;(bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/MINION/alignment/eng_order_align/create_eng_align_html.clp"))
(load ?*path*)
(bind ?mypath1 ?*mypath*)
(bind ?path2 (str-cat ?*mypath* "/tmp/" ?*filename* "_tmp/dir_names.txt"))
(open ?path2  op_fp "r")
(bind ?s_no (readline op_fp))
(bind ?*mypath* (str-cat ?*mypath* "/tmp/" ?*filename* "_tmp/"?s_no"/facts_for_eng_align_html"))
(close op_fp)
(load-facts ?*mypath*)
(bind ?mypath1 (str-cat ?*filename* "_man_align_tmp.html"))
(open ?mypath1 fp "w")
;(watch facts)
;(watch rules)
(run)
(close fp)
(clear)
(exit)

