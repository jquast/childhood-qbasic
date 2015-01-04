DECLARE SUB INV ()
DECLARE SUB INTRO ()
DECLARE SUB MESG ()
DECLARE SUB REDRAW ()
DECLARE SUB TIYME ()
DIM SHARED HITPOINTS, MAGIC, STRENGTH, DEXTERITY, ENERGY, LUCK, TYME$, T, MESG1.COLOR, MESG2.COLOR, MESG3.COLOR, NEWMESG$, MESG1$, MESG2$, MESG3$
CLS
MESG1.COLOR = 15
MESG2.COLOR = 7
MESG3.COLOR = 8
HITPOINTS = 50
MAGIC = 10
STRENGTH = 10
DEXTERITY = 10
ENERGY = 60
LUCK = 2
TYME$ = "Night"
MESG1$ = "           A message would go here         "
MESG2$ = "   Doesn't matter what the hell it says    "
MESG3$ = "       41 max charectors, 3 max lines      "

REDRAW
MESG

INTRO
DO
DO
    K$ = INKEY$
    '*Put proggies to run HERE
    lp = lp + 1
    '*Constantly needed things go here
        TIYME
        COLOR 15, 4
        LOCATE 22, 73: PRINT TIME$
        COLOR 7, 0
        IF lp = 250 OR lp = 500 OR lp = 750 THEN MESG
        
        IF lp = 1000 THEN
            '*Things not needed as much go here
       
            REDRAW
            MESG
            lp = 0
        END IF
   
    LOOP WHILE K$ = ""
    Ky = ASC(RIGHT$(K$, 1))
        IF K$ = "Q" OR K$ = "q" THEN CLS : END
        IF K$ = "I" OR K$ = "i" THEN INV

LOOP

SUB INTRO
LOCATE 13, 3: PRINT "This is a RPG (Role-Playing-Game) Engine written by D|ng0 (a.k.a. Jeff"
LOCATE 14, 3: PRINT "Quast) I got sick of those damn mud-like games, and I got sick of the"
LOCATE 15, 3: PRINT "cheap interface of BBS games like Lord, but I like thier game-style,"
LOCATE 16, 3: PRINT "so this is a RPG game Like L.O.R.D., but a better interface, and easy"
LOCATE 17, 3: PRINT "to use"
LOCATE 20, 27: PRINT "-PRESS ANY KEY TO CONTINUE-"

SLEEP
END SUB

SUB INV
LOCATE 1, 60: PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
LOCATE 2, 60: PRINT "³    INVENTORY     ³"
LOCATE 3, 60: PRINT "³    GOES HERE     ³"
LOCATE 4, 60: PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
SLEEP 1
END SUB

SUB MESG
'41 MAX CHARS
IF NEWMESG$ <> "" THEN
    MESG1.TMP$ = MESG1$
    MESG2.TMP$ = MESG2$
    MESG1$ = NEWMESG$
    MESG2$ = MESG1.TMP$
    MESG3$ = MESG2.TMP$
    NEWMESG$ = ""
END IF

COLOR MESG1.COLOR, 0: LOCATE 3, 36: PRINT MESG1$
COLOR MESG2.COLOR, 0: LOCATE 4, 36: PRINT MESG2$
COLOR MESG3.COLOR, 0: LOCATE 5, 36: PRINT MESG3$
COLOR 7, 0

END SUB

SUB REDRAW
LOCATE 1, 1
PRINT " ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿                                                         "
PRINT " ³Hitpoints           ³          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´ MESSAGES ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ "
PRINT " ³Strength            ³          ³                                            ³ "
PRINT "Ä´Magic               ÃÄÄÄÄÂÄÄÄÄÄ´                                            ÃÄ"
PRINT " ³Dexterity           ³    ³     ³                                            ³ "
PRINT " ³Luck                ³    ³     ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ "
PRINT " ³Energy              ³    ³                                                    "
PRINT "ÚÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁ¿   ³                                                    "
PRINT "³Time of Day           ³   ³                                                    "
PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ   ³                                                    "
PRINT "                           ³                                                    "
PRINT " ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ "
PRINT " ³                                                                            ³ "
PRINT " ³                                                                            ³ "
PRINT " ³                                                                            ³ "
PRINT " ³                                                                            ³ "
PRINT "Ä´                                                                            ÃÄ"
PRINT " ³                                                                            ³ "
PRINT " ³                                                                            ³ "
PRINT " ³                                                                            ³ "
PRINT " ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ "
LOCATE 22, 1
COLOR 7, 4
PRINT "                            žPG gŽmî äïgïî b˜ d³ïGé                            "
COLOR 7, 0
LOCATE 2, 19: PRINT HITPOINTS
LOCATE 3, 19: PRINT STRENGTH
LOCATE 4, 19: PRINT MAGIC
LOCATE 5, 19: PRINT DEXTERITY
LOCATE 6, 19: PRINT LUCK
LOCATE 7, 19: PRINT ENERGY
LOCATE 9, 17: PRINT TYME$
END SUB

SUB TIYME
T = T + .001
IF T > 0 AND T < 100 THEN TYME$ = "Night"
IF T > 100 AND T < 200 THEN TYME$ = "Dusk"
IF T > 200 AND T < 300 THEN TYME$ = "Noon"
IF T > 300 AND T < 400 THEN TYME$ = "Evening"
IF T > 400 THEN T = 0
END SUB

