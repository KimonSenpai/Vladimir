program GigCount;

var n, count: integer;

begin
    readln(n);
    while n > 0 do begin
        n := n div 10;
        Inc(count);
    end;
    writeln(count);
end.