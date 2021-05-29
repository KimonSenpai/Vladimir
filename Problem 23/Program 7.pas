begin
    var mas: array[1..62] of integer;
    var i, j: integer;
    for i := 1 to 62 do mas[i] := 0;
    mas[21] := 1;
    
    for i := 22 to 62 do begin
        for j := 21 to i - 1 do begin
            if j + j mod 10 = i then Inc(mas[i], mas[j]);
            if j * (j div 10) = i then Inc(mas[i], mas[j]);
            if j + abs(j mod 10 - j div 10) = i then Inc(mas[i], mas[j]);
        end;
    end;
    
    print(mas[62]);
end.