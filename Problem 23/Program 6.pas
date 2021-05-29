begin
    var mas: array[1..75] of integer;
    var i: integer;
    for i := 1 to 23 do mas[i] := 0;
    mas[3] := 1;
    for i := 4 to 25 do begin
        mas[i] := mas[i-1];
        var j := i div 2;
        if i mod 2 = 0 then begin
            inc(mas[i], mas[i div 2]);
            if j mod 2 = 0 then
                Inc(mas[i], mas[j-1]);
        end else begin
            if j mod 2 = 0 then
                Inc(mas[i], mas[j]);
        end;
        
    end;
    {writeln(mas[8]);}
    
    for i := 1 to 24 do mas[i] := 0;
    
    for i := 26 to 75 do begin
        mas[i] := mas[i-1];
        var j := i div 2;
        if i mod 2 = 0 then begin
            inc(mas[i], mas[i div 2]);
            if j mod 2 = 0 then
                Inc(mas[i], mas[j-1]);
        end else begin
            if j mod 2 = 0 then
                Inc(mas[i], mas[j]);
        end;
        
    end;
    writeln(mas[75]);
end.