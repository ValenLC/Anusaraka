####Any changes done in stdenglish/abbr1.lex should be updated here and also in abbr.sh

sed 's/dot_double_quote/.\"/g' $1 | sed  's/{number:/{/g' | sed 's/{vib:/{/g' | sed 's/{tam:है/{/g' | sed 's/{tam:/{/g' | sed 's/{}//g' |  sed  's/right_paren,/)/g' | sed  's/)\./\./g'|sed  's/equal_to/=/g'|sed  's/left_paren/(/g'|sed  's/right_paren/)/g'|sed  's/question_mark/?/g' |sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g'| sed 's/ABBRDOTDOTDOT /. . . /g' | sed 's/ DOTDOTDOT/ .../g'|sed 's/DOTDOTDOT/.../g'| sed 's/ABBRThatis/i.e./g' | sed 's/aABBRDOTABBRkABBRDOTABBRaABBRDOTABBR/a.k.a./g' | sed 's/eABBRDOTABBRgABBRDOTABBR/e.g./g'| sed 's/TWTWTWTW/_/g' | sed 's/TWTW/ /g' | sed -e 's/\\@//g' | sed 's/UABBRDOTABBRSABBRDOTABBR/U.S./g' | sed 's/UABBRDOTABBRSABBRDOTABBRAABBRDOTABBR/U.S.A./g' | sed 's/UABBRDOTABBRKABBRDOTABBR/U.K./g' | sed 's/AABBRDOTABBRDABBRDOTABBR/A.D./g' |  sed 's/SrABBRDOT/Sr./g' |  sed 's/JrABBRDOT/Jr./g' | sed 's/DrABBRDOT/Dr./g' |  sed 's/MrABBRDOT/Mr./g' | sed 's/MrsABBRDOT/Mrs./g' | sed 's/MsABBRDOT/Ms./g' | sed 's/IncABBRDOT/Inc./g' | sed 's/ ABBRDOT / . /g' | sed 's/\([0-9]*\) ABBRpercent/\1%/g' | sed 's/ABBRdollar /$/g' | sed 's/ABBRsharp /#/g' | sed 's/caABBRDOT /ca. /g' | sed 's/aABBRDOTdABBRDOT /a.d. /g' | sed 's/bABBRDOTcABBRDOT /b.c. /g'  | sed 's/mABBRDOTgABBRDOT /m.g. /g' | sed 's/P_COM/,/g'| sed 's/P_DQT/"/g' | sed 's/P_LB/(/g' | sed 's/P_RB/)/g' | sed 's/P_DOT/./g'| sed "s/P_SQT/'/g" | sed 's/-@/-/g'  > $2

