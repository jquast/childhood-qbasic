DECLARE SUB ENEMY ()
DECLARE SUB STATUS ()
DECLARE SUB BULLET.CALCULATE ()
DECLARE SUB BULLET.GHOST ()
DECLARE SUB SHIP ()
DECLARE SUB SHIP.GHOST ()
DECLARE SUB SHIP.RIGHT ()
DECLARE SUB SHIP.LEFT ()
DECLARE SUB SHIP.SHOOT ()
DIM SHARED SHIP.X.ORIGIN
DIM SHARED SHIP.Y.ORIGIN
DIM SHARED BULLET
DIM SHARED BULLET.X.ORIGIN
DIM SHARED BULLET.Y.ORIGIN
DIM SHARED SCORE
DIM SHARED HEALTH
DIM SHARED ENEMY.X.ORIGIN
DIM SHARED ENEMY.Y.ORIGIN

SHIP.X.ORIGIN = 160
SHIP.Y.ORIGIN = 183
ENEMY.X.ORIGIN = 160
ENEMY.Y.ORIGIN = 20
BULLET = 0
HEALTH = 100
SCORE = 666
SCREEN 13
CLS

SHIP
   DO
      DO
         K$ = INKEY$

IF BULLET = 1 THEN BULLET.GHOST: BULLET.CALCULATE

SHIP
ENEMY
STATUS
FOR B = 1 TO 1000
NEXT B


      LOOP WHILE K$ = ""

      Ky = ASC(RIGHT$(K$, 1))

                    
            IF K$ = "Z" THEN SHIP.LEFT
            IF K$ = "z" THEN SHIP.LEFT
            IF K$ = "X" THEN SHIP.RIGHT
            IF K$ = "x" THEN SHIP.RIGHT
            IF K$ = "A" THEN SHIP.SHOOT
            IF K$ = "a" THEN SHIP.SHOOT
            IF K$ = "Q" THEN CLS : END
            IF K$ = "q" THEN CLS : END
   LOOP UNTIL Ky = ENTER

SUB BULLET.CALCULATE
IF BULLET.Y.ORIGIN <= 5 THEN BULLET = 0: BULLET.GHOST: GOTO BULLET.CALCULATE.END
C = 40
X = BULLET.X.ORIGIN
Y = BULLET.Y.ORIGIN
PSET (X, Y), C
Y = Y + 1
PSET (X, Y), C
Y = Y + 1
PSET (X, Y), C
Y = Y + 1
PSET (X, Y), C
Y = Y + 1
PSET (X, Y), C
Y = Y + 1
BULLET.Y.ORIGIN = BULLET.Y.ORIGIN - 1
BULLET.CALCULATE.END:
END SUB

SUB BULLET.GHOST

C = 0
X = BULLET.X.ORIGIN
Y = BULLET.Y.ORIGIN + 1
PSET (X, Y), C
Y = Y + 1
PSET (X, Y), C
Y = Y + 1
PSET (X, Y), C
Y = Y + 1
PSET (X, Y), C
Y = Y + 1
PSET (X, Y), C
Y = Y + 1





END SUB

SUB ENEMY

ENEMY.POINT.1 = ENEMY.X.ORIGIN: ENEMY.POINT.2 = ENEMY.X.ORIGIN + 10
IF BULLET.Y.ORIGIN <= ENEMY.Y.ORIGIN AND BULLET.Y.ORIGIN >= ENEMY.Y.ORIGIN AND BULLET.X.ORIGIN >= ENEMY.POINT.1 AND BULLET.X.ORIGIN <= ENEMY.POINT.2 THEN SCORE = SCORE + 1


X = ENEMY.X.ORIGIN
Y = ENEMY.Y.ORIGIN

PSET (X, Y), 4
X = ENEMY.X.ORIGIN + 1

PSET (X, Y), 4
X = X + 1
PSET (X, Y), 4
X = X + 1
PSET (X, Y), 4
X = X + 1
PSET (X, Y), 4
X = X + 1
PSET (X, Y), 4
X = X + 1
PSET (X, Y), 4
X = X + 1
PSET (X, Y), 4
X = X + 1
PSET (X, Y), 4
X = X + 1


END SUB

SUB SHIP
C = 30
GOSUB SET.X.Y
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 1: X = X - 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 1: X = X + 1
GOSUB DRAW.PIXEL


'*****
GOSUB SET.X.Y
Y = Y + 2: X = X - 2
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 2: X = X - 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 2
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 2: X = X + 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 2: X = X + 2
GOSUB DRAW.PIXEL
'*******
GOSUB SET.X.Y
Y = Y + 3: X = X - 2
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 3: X = X - 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 3
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 3: X = X + 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 3: X = X + 2
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 4: X = X - 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 4
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 4: X = X + 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 5
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 6
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 7: X = X - 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 7
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 7: X = X + 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 8: X = X - 5
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 8: X = X - 2
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 8: X = X - 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 8
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 8: X = X + 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 8: X = X + 2
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 8: X = X + 5
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X - 6
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X - 5
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X - 4
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X - 3
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X - 2
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X - 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X + 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X + 2
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X + 3
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X + 4
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X + 5
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 9: X = X + 6
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X - 7
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X - 6
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X - 5
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X - 4
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X - 3
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X - 2
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X - 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X + 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X + 2
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X + 3
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X + 4
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X + 5
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X + 6
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 10: X = X + 7
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 11: X = X - 2
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 11: X = X - 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 11
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 11: X = X + 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 11: X = X + 2
GOSUB DRAW.PIXEL


GOSUB SET.X.Y
Y = Y + 12: X = X - 1
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 12
GOSUB DRAW.PIXEL

GOSUB SET.X.Y
Y = Y + 12: X = X + 1
GOSUB DRAW.PIXEL




GOTO END.OF.SUB
SET.X.Y:
X = SHIP.X.ORIGIN
Y = SHIP.Y.ORIGIN
C = 30
RETURN
DRAW.PIXEL:
PSET (X, Y), C
RETURN
END.OF.SUB:
END SUB

SUB SHIP.GHOST

GOSUB SET.X.Y2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 1: X = X - 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 1: X = X + 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 2: X = X - 2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 2: X = X - 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 2: X = X + 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 2: X = X + 2
GOSUB DRAW.PIXEL2
'*******
GOSUB SET.X.Y2
Y = Y + 3: X = X - 2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 3: X = X - 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 3
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 3: X = X + 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 3: X = X + 2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 4: X = X - 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 4
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 4: X = X + 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 5
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 6
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 7: X = X - 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 7
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 7: X = X + 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 8: X = X - 5
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 8: X = X - 2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 8: X = X - 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 8
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 8: X = X + 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 8: X = X + 2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 8: X = X + 5
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X - 6
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X - 5
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X - 4
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X - 3
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X - 2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X - 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X + 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X + 2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X + 3
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X + 4
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X + 5
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 9: X = X + 6
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X - 7
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X - 6
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X - 5
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X - 4
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X - 3
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X - 2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X - 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X + 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X + 2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X + 3
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X + 4
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X + 5
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X + 6
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 10: X = X + 7
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 11: X = X - 2
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 11: X = X - 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 11
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 11: X = X + 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 11: X = X + 2
GOSUB DRAW.PIXEL2


GOSUB SET.X.Y2
Y = Y + 12: X = X - 1
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 12
GOSUB DRAW.PIXEL2

GOSUB SET.X.Y2
Y = Y + 12: X = X + 1
GOSUB DRAW.PIXEL2


GOTO END.OF.SUB2
SET.X.Y2:
X = SHIP.X.ORIGIN
Y = SHIP.Y.ORIGIN
RETURN
DRAW.PIXEL2:
PSET (X, Y), 0
RETURN
END.OF.SUB2:
END SUB

SUB SHIP.LEFT
SHIP.GHOST
SHIP.X.ORIGIN = SHIP.X.ORIGIN - 4
IF SHIP.X.ORIGIN <= 10 THEN SHIP.X.ORIGIN = SHIP.X.ORIGIN + 4
SHIP
END SUB

SUB SHIP.RIGHT
SHIP.GHOST
SHIP.X.ORIGIN = SHIP.X.ORIGIN + 4
IF SHIP.X.ORIGIN >= 250 THEN SHIP.X.ORIGIN = SHIP.X.ORIGIN - 4
SHIP
END SUB

SUB SHIP.SHOOT
IF BULLET = 1 THEN GOTO SHIP.SHOOT.END
BULLET = 1
BULLET.Y.ORIGIN = SHIP.Y.ORIGIN - 5
BULLET.X.ORIGIN = SHIP.X.ORIGIN
SHIP.SHOOT.END:
END SUB

SUB STATUS
LINE (260, 1)-(260, 200), 40
LINE (0, 1)-(0, 200), 40
LINE (0, 1)-(260, 1), 40
LINE (0, 199)-(260, 199), 40
LOCATE 1, 34: PRINT "SCORE"
LOCATE 2, 34: PRINT SCORE
LOCATE 8, 34: PRINT "HEALTH"
LOCATE 9, 34: PRINT HEALTH
END SUB

