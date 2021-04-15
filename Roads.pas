program Roads;

var AA, BB, t, a, b, n, i: integer;

begin
    readln(n, t);
    AA := 0;
    BB := t;
    for i := 1 to n do begin
        readln(a, b);
        AA := AA + a;
        BB := min(AA + t, BB + b);
    end;
    writeln(BB);
end.