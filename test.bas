TYPE OBJECT
    X AS INTEGER
    Y AS INTEGER
    XSLOPE AS INTEGER
    YSLOPE AS INTEGER
    COLOUR AS INTEGER
END TYPE

TOTAL = 10


DIM SHARED STAR(1 TO TOTAL) AS OBJECT

RANDOMIZE TIMER

FOR I% = 1 TO TOTAL
    STAR(I%).X = RND * 320
    STAR(I%).Y = RND * 200
    STAR(I%).XSLOPE = 1
    STAR(I%).YSLOPE = 1
    STAR(I%).COLOUR = RND * 31 + 15
NEXT I%

SCREEN 13

DO

FOR I% = 1 TO TOTAL
    PSET (STAR(I%).X, STAR(I%).Y), STAR(I%).COLOUR
    PSET (STAR(I%).X, 0), STAR(I%).COLOUR
    PSET (0, STAR(I%).Y), STAR(I%).COLOUR
    PSET (STAR(I%).X, 199), STAR(I%).COLOUR
    PSET (319, STAR(I%).Y), STAR(I%).COLOUR

    'FOR X% = -100 TO 100 STEP 10
        'IF X% = 0 THEN
            LINE (STAR(I%).X + X%, 0)-(STAR(I%).X + X%, 199), STAR(I%).COLOUR + 2
            LINE (0, STAR(I%).Y + X%)-(319, STAR(I%).Y + X%), STAR(I%).COLOUR + 2
        'ELSE
        '    LINE (STAR(I%).X + X%, 0)-(STAR(I%).X + X%, 199), STAR(I%).COLOUR
        '    LINE (0, STAR(I%).Y + X%)-(319, STAR(I%).Y + X%), STAR(I%).COLOUR
        'END IF
    'NEXT X%
NEXT I%

FOR I% = 1 TO 32766: NEXT I%

FOR I% = 1 TO TOTAL
    PSET (STAR(I%).X, STAR(I%).Y), 0
    PSET (STAR(I%).X, 0), 0
    PSET (0, STAR(I%).Y), 0
    PSET (STAR(I%).X, 199), 0
    PSET (319, STAR(I%).Y), 0

    'FOR X% = -100 TO 100 STEP 10
        LINE (STAR(I%).X + X%, 0)-(STAR(I%).X + X%, 199), 0
        LINE (0, STAR(I%).Y + X%)-(319, STAR(I%).Y + X%), 0
    'NEXT X%
NEXT I%

FOR I% = 1 TO TOTAL
    IF STAR(I%).X >= 320 / 2 THEN STAR(I%).XSLOPE = STAR(I%).XSLOPE - 1
    IF STAR(I%).X <= 320 / 2 THEN STAR(I%).XSLOPE = STAR(I%).XSLOPE + 1
    IF STAR(I%).Y >= 200 / 2 THEN STAR(I%).YSLOPE = STAR(I%).YSLOPE - 1
    IF STAR(I%).Y <= 200 / 2 THEN STAR(I%).YSLOPE = STAR(I%).YSLOPE + 1
NEXT I%

FOR I% = 1 TO TOTAL
    STAR(I%).X = STAR(I%).X + STAR(I%).XSLOPE
    STAR(I%).Y = STAR(I%).Y + STAR(I%).YSLOPE
NEXT I%

LOOP UNTIL INKEY$ <> ""

