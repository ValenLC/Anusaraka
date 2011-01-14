
(defrule ban0
(declare (salience 5000))
(id-root ?id ban)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawibaMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ban.clp 	ban0   "  ?id "  prawibaMXa )" crlf))
)

;"ban","N","1.prawibaMXa"
;The government should put a ban on smoking in public places.
;
(defrule ban1
(declare (salience 4900))
(id-root ?id ban)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawibaMXa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ban.clp 	ban1   "  ?id "  prawibaMXa_lagA )" crlf))
)

;"ban","VT","1.prawibaMXa_lagAnA"
;The government has banned the use of chemical weapons.
;
