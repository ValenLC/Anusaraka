(defrule cheap0
(declare (salience 5000))
(id-root ?id cheap)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saswA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheap.clp 	cheap0   "  ?id "  saswA )" crlf))
)
;"cheap","Adj","1.saswA"
;Bananas are available at cheap rates in this season.
;
;

;(added by Darpan Baweja : NIT allahabad)
;(Rahul is a cheap boy)
(defrule cheap1
(declare (salience 5100))
(id-root ?id cheap)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) person|man|woman|girl|boy|guy)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheap.clp 	cheap1   "  ?id "  GatiyA )" crlf))
)


