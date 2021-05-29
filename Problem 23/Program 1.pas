begin
    var mas: array[1..23] of integer;
    var i: integer;
    for i := 1 to 23 do mas[i] := 0;
    mas[4] := 1;
    for i := 5 to 8 do begin
        mas[i] := mas[i-1] + mas[i-2];
        if i mod 3 = 0 then
            inc(mas[i], mas[i div 3]);
    end;
    {writeln(mas[8]);}
    
    for i := 4 to 7 do mas[i] := 0;
    
    for i := 9 to 23 do begin
        if (i = 11) or (i = 18) then continue;
        mas[i] := mas[i-1] + mas[i-2];
        if i mod 3 = 0 then
            inc(mas[i], mas[i div 3]);
    end;
    
    writeln(mas[23]);
end.