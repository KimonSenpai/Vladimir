program Pair_with_seed;

var i, n, a, maxV, maxS: integer;
    mas: array[0..4] of integer;

begin
    readln(n);
    maxV := 0;
    maxS := 0;
    for i := 0 to 4 do begin
        read(a);
        mas[i] := a;
    end;
    for i := 5 to n do begin
        read(a);
        maxV := max(maxV, mas[i mod 5]);
        maxS := max(maxS, a + maxV);
        mas[i mod 5] := a;
    end;
    writeln(maxS);
end.