
(defrule animal0
(declare (salience 5000))
(id-root ?id animal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paSu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  animal.clp 	animal0   "  ?id "  paSu )" crlf))
)

(defrule animal1
(declare (salience 4900))
(id-root ?id animal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pASavika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  animal.clp 	animal1   "  ?id "  pASavika )" crlf))
)

;"animal","Adj","1.pASavika/jaMgalI"
;His behaviour with his wife is just like animal.
;
;