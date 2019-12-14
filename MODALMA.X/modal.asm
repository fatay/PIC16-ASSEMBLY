	list		p=16f877A	; WHICH PIC WE USE
	#include	<p16f877A.inc>	; INCLUDING SFR REGISTER-S
	
	ORG 0X00   ;SELECT ORIGIN FOR RUNNING
	
	DEG1  EQU 0X20
	DEG2  EQU 0X21
	SONUC EQU 0X22
 
	MOVLW D'55'
	MOVWF DEG1
	
	MOVLW D'10'
	MOVWF DEG2
	
	MOD
	    BSF STATUS,C
	    SUBWF DEG1,F
	    BTFSS STATUS,C
	    GOTO SONLAN
	    GOTO MOD
	
	SONLAN
	    MOVFW DEG2
	    ADDWF DEG1,W 
	    MOVWF SONUC
	    
	END



