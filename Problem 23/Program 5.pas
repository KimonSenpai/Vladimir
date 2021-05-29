begin
    var mas: array[1..100] of integer;
    var i: integer;
    for i := 1 to 100 do mas[i] := 0;
    mas[22] := 1;
    for i := 21 downto 2 do begin
        mas[i] := mas[i + 1] + mas[i + 3] + mas[3*i] + mas[3*i + 1] + mas[3*i + 2];
    end;
    
    print(mas[2]);
end.