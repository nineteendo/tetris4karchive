program tetris;

  uses
    Crt;

  const
    width = 10;                                  { playing field width }
    height = 20;                                 { playing field height }

  const
    piece: array [1..7, 1..3, 0..1] of ShortInt = ( { piece shapes : piece, element, coordinate }
      (( 1, 0), ( 1, 1), ( 0, 1)),               { O }
      ((-1, 0), ( 1, 0), ( 2, 0)),               { I }
      (( 0, 1), ( 1, 0), ( 2, 0)),               { L }
      (( 0, 1), (-1, 0), (-2, 0)),               { J }
      ((-1, 0), ( 1, 0), ( 0, 1)),               { T }
      (( 1, 0), ( 0, 1), (-1, 1)),               { S }
      ((-1, 0), ( 0, 1), ( 1, 1))                { Z }
    );
    color: array [1..7, 0..1] of Byte = (        { piece colors : foreground, background }
      (Yellow,       Brown),                     { O }
      (LightCyan,    Cyan),                      { I }
      (LightBlue,    Blue),                      { L }
      (White,        LightGray),                 { J }
      (LightMagenta, Magenta),                   { T }
      (LightGreen,   Green),                     { S }
      (LightRed,     Red)                        { Z }
    );

  var
    area: array [1..width + 2, 1..height + 1] of Byte; { playing field }
    coord: array [0..3, 0..1] of Byte;           { precalculated element coordinates }
    played,                                      { played pieces count }
    removed,                                     { completed lines count }
    level,                                       { current level }
    score: LongInt;                              { accumulated score }
    time,                                        { current level delay }
    wait,                                        { current piece delay }
    made,                                        { completed lines in current level }
    multi,                                       { multiline count }
    screen,                                      { original screen size }
    i, j, j2: Word;                              { counters }
    current,                                     { current piece }
    next,                                        { next piece }
    x,                                           { horizontal coordinate }
    y,                                           { vertical coordinate }
    position,                                    { rotation position }
    k: Byte;                                     { pressed key }
    ok: Boolean;                                 { aggregated condition }

{ precalculates the give piece's elements coordinates }
  procedure coordinate(current, x, y, position: Byte);
  begin
    coord[0, 0] := x;
    coord[0, 1] := y;
    for i := 1 to 3 do begin
      coord[i, 0] := x + piece[current, i, position mod 2] * (Ord(position in [0, 1]) * 2 - 1);
      coord[i, 1] := y + piece[current, i, 1 - position mod 2] * (Ord(position in [0, 3]) * 2 - 1);
    end;
  end;

{ draws a piece }
  procedure draw(current, x, y, position: Byte; visible: Boolean);
  begin
    coordinate(current, x, y, position);

    for i := 0 to 3 do begin
      GotoXY(coord[i, 0] * 2 + 1, coord[i, 1]);
      if visible then begin
        TextColor(color[current, 0]);
        TextBackground(color[current, 1]);
        Write('[]');
      end else begin
        TextBackground(Black);
        Write('  ');
      end;
    end;
  end;

{ check whether a piece can be placed in given position }
  function check(x2, y2, position2: Byte): Boolean;
  begin
    coordinate(current, x2, y2, position2);

    ok := True;
    for i := 0 to 3 do if area[coord[i, 0], coord[i, 1]] <> 0 then ok := False;

    if ok then begin
      x := x2;
      y := y2;
      position := position2;
    end;

    check := ok;
  end;

begin

  Randomize;
  TextColor(LightGray);
  TextBackground(Black);
  ClrScr;
  screen := WindMax;

  for i := 0 to width + 1 do for j := 1 to height + 1 do area[i, j] := 9 * Ord(not ((i in [1..width]) and (j in [1..height])));

  Window(1, 1, width * 2 + 4, height + 2);
  for i := 1 to (width + 2) * (height + 1) do Write('##');
  Window(3, 1, width * 2 + 2, height);
  ClrScr;
  Window(1, 1, Lo(screen), Hi(screen));

  Window(width * 2 + 7, 1, width * 2 + 25, 10);
  Writeln('Next');
  Writeln;
  Writeln;
  Writeln('Piece');
  Writeln('Line');
  Writeln('Level');
  Writeln('Score');
  Window(1, 1, Lo(screen), Hi(screen));

  played := 0;
  removed := 0;
  level := 1;
  score := 0;

  current := 9;
  next := 9;
  made := 0;

  repeat

    if current = 9 then begin
      if next = 9 then next := Random(7) + 1 else draw(next, width + 9, 1, 0, False);

      current := next;
      next := Random(7) + 1;
      x := width div 2;
      y := 1;
      position := 0;
      time := 1100 - level * 100;
      wait := time;

      Inc(played);
      Inc(score);
      if made = 25 then begin
        Inc(level);
        made := 0;
      end;

      draw(next, width + 9, 1, 0, True);

      Window(width * 2 + 15, 4, width * 2 + 25, 10);
      TextColor(LightGray);
      TextBackground(Black);
      Writeln(played:5);
      Writeln(removed:5);
      Writeln(level:5);
      Writeln(score:5);
      Window(1, 1, Lo(screen), Hi(screen));

      if not check(x, y, position) then begin
        GotoXY(width * 2 + 7, 10);
        Write('Game Over');
        Break;
      end;
    end;

    draw(current, x, y, position, True);
    GotoXY(1, 1);
    repeat Delay(1);
      Dec(wait);
    until KeyPressed or (wait = 0);
    draw(current, x, y, position, False);

    if KeyPressed then begin
      k := Ord(ReadKey);
      case k of
        75, 77: check(x + Ord(k = 77) * 2 - 1, y, position);
        72, 80: check(x, y, (position + Ord(k = 80) * 2 + 1) mod 4);
        32: begin
          time := 1;
          Inc(score);
        end;
      end;
    end;

    if wait = 0 then begin
      if not check(x, y + 1, position) then begin
        draw(current, x, y, position, True);
        for i := 0 to 3 do area[coord[i, 0], coord[i, 1]] := current;

        multi := 0;
        for j := 1 to height do begin
          ok := True;
          for i := 1 to width do if area[i, j] = 0 then ok := False;

          if ok then begin
            for j2 := j downto 2 do for i := 1 to width do area[i, j2] := area[i, j2 - 1];
            for i := 1 to width do area[i, 1] := 0;

            Inc(score, 10 + multi * 2);
            Inc(removed);
            Inc(multi);

            Window(3, 1, width * 2 + 2, height);
            TextBackground(Black);
            GotoXY(1, j);
            DelLine;
            GotoXY(1, 1);
            InsLine;
            Window(1, 1, Lo(screen), Hi(screen));
          end;

        end;
        if multi <> 0 then Inc(made);

        current := 9;
      end;
      wait := time;
    end;

  until k = 27;

  ReadKey;
  TextColor(LightGray);
  TextBackground(Black);
  ClrScr;

end.