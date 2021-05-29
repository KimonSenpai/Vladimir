begin
    var mas: array[1..25] of integer;
    var i: integer;
    
    mas[1] := 0;
    mas[2] := 0;
    mas[3] := 1;
    for i := 4 to 9 do begin
        mas[i] := mas[i-1];
        if i mod 2 = 0 then Inc(mas[i], mas[i div 2])
        else Inc(mas[i], mas[i-1] + mas[i-2]);
        
    end;
    
    for i := 3 to 8 do mas[i] := 0;
    for i := 10 to 17 do begin
        mas[i] := mas[i-1];
        if i mod 2 = 0 then Inc(mas[i], mas[i div 2])
        else Inc(mas[i], mas[i-1] + mas[i-2]);
        
    end;
    for i := 9 to 16 do mas[i] := 0;
    for i := 18 to 25 do begin
        mas[i] := mas[i-1];
        if i mod 2 = 0 then Inc(mas[i], mas[i div 2])
        else Inc(mas[i], mas[i-1] + mas[i-2]);
        
    end;
    print(mas[25]);
end.