DECLARE SUB PADDLE () : DECLARE SUB BALL ()
DIM SHARED BALL.X: DIM SHARED BALL.Y: DIM SHARED BALL.X.SLOPE: DIM SHARED BALL.Y.SLOPE: DIM SHARED SPEED: DIM SHARED SPEED2: DIM SHARED PADDLE.SIDE: DIM SHARED PADKEY: DIM SHARED PADDLE.LEFT.X: DIM SHARED PADDLE.LEFT.Y: DIM SHARED PADDLE.RIGHT.X:  _
DIM SHARED PADDLE.RIGHT.Y: SPEED = 400: BALL.X = 10: BALL.Y = 100: BALL.X.SLOPE = 2: BALL.Y.SLOPE = 1: PADDLE.LEFT.X = 10: PADDLE.LEFT.Y = 100: PADDLE.RIGHT.X = 310: PADDLE.RIGHT.Y = 100: SCREEN 13
   DO
      DO
      K$ = INKEY$
      BALL
      PADDLE
      FOR PAUSE = 1 TO (10 * SPEED): NEXT PAUSE
      LOOP WHILE K$ = ""
   Ky = ASC(RIGHT$(K$, 1))
      IF K$ = "A" THEN PADKEY = 1
      IF K$ = "Z" THEN PADKEY = 2
      IF K$ = "Q" THEN CLS : END
      IF K$ = "a" THEN PADKEY = 1
      IF K$ = "z" THEN PADKEY = 2
      IF K$ = "q" THEN CLS : END
   LOOP

SUB BALL
CIRCLE (BALL.X, BALL.Y), 2, 0: PAINT (BALL.X, BALL.Y), 0: BALL.X = BALL.X + BALL.X.SLOPE: BALL.Y = BALL.Y + BALL.Y.SLOPE
   IF BALL.X >= 317 THEN BALL.X.SLOPE = BALL.X.SLOPE * -1: BEEP
   IF BALL.Y >= 180 THEN BALL.Y.SLOPE = BALL.Y.SLOPE * -1
   IF BALL.X <= 3 THEN BALL.X.SLOPE = BALL.X.SLOPE * -1: BEEP
   IF BALL.Y <= 3 THEN BALL.Y.SLOPE = BALL.Y.SLOPE * -1
CIRCLE (BALL.X, BALL.Y), 2, 10: PAINT (BALL.X, BALL.Y), 10
END SUB

SUB PADDLE
   IF PADKEY <> 0 THEN PAINT (PADDLE.LEFT.X - 1, PADDLE.LEFT.Y), 0
   POINT1 = PADDLE.LEFT.Y - 7: POINT2 = PADDLE.LEFT.Y + 7
      IF PADKEY = 1 THEN IF PADDLE.LEFT.Y >= 20 THEN PADDLE.LEFT.Y = PADDLE.LEFT.Y - 4: PAINT (PADDLE.LEFT.X - 1, PADDLE.LEFT.Y), 0: PADKEY = 0
      IF PADKEY = 2 THEN IF PADDLE.LEFT.Y <= 185 THEN PADDLE.LEFT.Y = PADDLE.LEFT.Y + 4: PAINT (PADDLE.LEFT.X - 1, PADDLE.LEFT.Y), 0: PADKEY = 0
      IF BALL.X <= PADDLE.LEFT.X AND BALL.Y >= POINT1 AND BALL.Y <= POINT2 THEN BALL.X.SLOPE = BALL.X.SLOPE * -1
      IF BALL.X <= PADDLE.LEFT.X AND BALL.Y >= POINT1 AND BALL.Y <= PADDLE.LEFT.Y - 6 THEN BALL.Y.SLOPE = BALL.Y.SLOPE + -.5
      IF BALL.X <= PADDLE.LEFT.X AND BALL.Y <= POINT2 AND BALL.Y >= PADDLE.LEFT.Y + 6 THEN BALL.Y.SLOPE = BALL.Y.SLOPE + .5
   X = PADDLE.LEFT.X: Y = PADDLE.LEFT.Y: FOR RIGHT.TO.LEFT = 1 TO 5: Y = PADDLE.LEFT.Y - 8: FOR UP.DOWN = 1 TO 16: PSET (X, Y), 10: Y = Y + 1: NEXT UP.DOWN: X = X - 1: NEXT RIGHT.TO.LEFT
   X = PADDLE.LEFT.X - 2: Y = PADDLE.LEFT.Y - 7: CIRCLE (X, Y), 2, 10: Y = Y + 13: CIRCLE (X, Y), 2, 10: PAINT (PADDLE.RIGHT.X - 1, PADDLE.RIGHT.Y), 0: POINT1 = PADDLE.RIGHT.Y - 7: POINT2 = PADDLE.RIGHT.Y + 7: POINT1 = PADDLE.RIGHT.Y - 7: POINT2 =  _
PADDLE.RIGHT.Y + 7
      IF BALL.Y <= PADDLE.RIGHT.Y THEN IF PADDLE.RIGHT.Y >= 20 THEN PADDLE.RIGHT.Y = PADDLE.RIGHT.Y - .94: PAINT (PADDLE.RIGHT.X - 1, PADDLE.RIGHT.Y), 0
      IF BALL.Y >= PADDLE.RIGHT.Y THEN IF PADDLE.RIGHT.Y <= 185 THEN PADDLE.RIGHT.Y = PADDLE.RIGHT.Y + .94: PAINT (PADDLE.RIGHT.X - 1, PADDLE.RIGHT.Y), 0
      IF BALL.X >= PADDLE.RIGHT.X AND BALL.Y >= POINT1 AND BALL.Y <= POINT2 THEN BALL.X.SLOPE = BALL.X.SLOPE * -1
      IF BALL.X >= PADDLE.RIGHT.X AND BALL.Y >= POINT1 AND BALL.Y <= PADDLE.RIGHT.Y - 6 THEN BALL.Y.SLOPE = BALL.Y.SLOPE + -5
      IF BALL.X >= PADDLE.RIGHT.X AND BALL.Y <= POINT2 AND BALL.Y >= PADDLE.RIGHT.Y + 6 THEN BALL.Y.SLOPE = BALL.Y.SLOPE + 5
   X = PADDLE.RIGHT.X: Y = PADDLE.RIGHT.Y: FOR RIGHT.TO.LEFT = 1 TO 5: Y = PADDLE.RIGHT.Y - 8: FOR UP.DOWN = 1 TO 16: PSET (X, Y), 10: Y = Y + 1: NEXT UP.DOWN: X = X - 1: NEXT RIGHT.TO.LEFT: X = PADDLE.RIGHT.X - 2: Y = PADDLE.RIGHT.Y - 7: CIRCLE (X _
, Y), 2, 10: Y = Y + 13: CIRCLE (X, Y), 2, 10
END SUB
