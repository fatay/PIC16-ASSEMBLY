    list    p=16f877a
    #include<p16f877a.inc>
    
    ORG 0X00
    
    ;5X4X3X2X1
    
    DEG1 EQU 0X20
    DEG2 EQU 0X21
    YED  EQU 0X22
    TOPLAM EQU 0X23
 
 
    MOVLW D'4'
    MOVWF DEG1
    
    DECF  DEG1,W
    MOVWF DEG2
    MOVWF YED
    CLRW
    
    
    CARPMA
	ADDWF  DEG1,W
	DECFSZ DEG2,F
	GOTO CARPMA
	GOTO AZALT
	
    AZALT
	MOVWF   TOPLAM
	MOVWF   DEG1
	DECFSZ  YED,F
	GOTO HELL
	GOTO SONLAN
	
    HELL   
	MOVFW YED
	MOVWF DEG2
	CLRW
	GOTO  CARPMA

    SONLAN
	END
    
	
	