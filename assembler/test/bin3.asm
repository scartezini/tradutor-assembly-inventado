; declaracao de EQU
LABEL: EQU 1
LABEL1: EQU -1

N: EQU 2
ACABEI_DE_INVENTAR_UMA_EXTERNA: EXTERN
VIDA_LOKA: EXTERN 

SECTION TEXT
add NEW_DATA
add NEW_DATA + N
INPUT      OLD_DATA
LOAD OLD_DATA
L1: DIV DOIS

STORE  NEW_DATA
MULT ACABEI_DE_INVENTAR_UMA_EXTERNA
MULT ACABEI_DE_INVENTAR_UMA_EXTERNA + N
IF LABEL ;EQU VERDADEITO 
STORE TMP_DATA
LOAD OLD_DATA
IF LABEL1 ; EQU FALSO
SUB TMP_DATA
SUB TMP_DATA
STORE TMP_DATA
OUTPUT TMP_DATA
COPY NEW_DATA, OLD_DATA
LOAD OLD_DATA
JMPP L1
PUBLIC NEW_DATA
PUBLIC L1
STOP
SECTION        DATA
DOIS: CONST 2
    OLD_DATA: SPACE
NEW_DATA: SPACE
TMP_DATA: SPACE
