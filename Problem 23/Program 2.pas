function f(n, k: integer): SortedSet<integer>;
begin
    var s: SortedSet<integer> := new SortedSet<integer>();
    
    if k = 5 then begin
        s.Add(n);
        f := s;
    end else begin
        s.UnionWith(f(n+2, k+1));
        s.UnionWith(f(n+3, k+1));
        s.UnionWith(f(n*2, k+1));
        f := s;
    end;
end;

begin
    {var mas: array[1..320] of integer;
    var i: integer;
    for i := 1 to 9 do mas[i] := 5;
    mas[10] := 0;
    for i := 11 to 320 do}
    writeln(f(10, 0).Count);
end.