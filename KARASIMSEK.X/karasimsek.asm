    list      p=16f877a
    #include <p16f877a.inc>
    
    ORG 0X00
    
    KARASIMSEK EQU 0X21
 
    MOVLW B'00000001'
    MOVWF KARASIMSEK

    
    SOLAKAYDIR
	RLF KARASIMSEK
	BTFSS KARASIMSEK,7
	GOTO SOLAKAYDIR
	GOTO SAGAKAYDIR

    SAGAKAYDIR 
	RRF KARASIMSEK 
	BTFSS KARASIMSEK,0
	GOTO SAGAKAYDIR
	GOTO SOLAKAYDIR
	
    END


