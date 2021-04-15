program Sort;

var mas: array[1..1000] of integer;
    N, i: integer;
    flag: boolean;

procedure swap(var a: integer; var b: integer);
var t: integer;
begin
    t := a;
    a := b;
    b := t;
end;

begin
    readln(N);
    for i := 1 to N do
        readln(mas[i]);
    (*4, 3, 2, 1*)
    repeat
        flag := true;
        for i := 1 to N-1 do begin
            if mas[i] > mas[i+1] then begin
                swap(mas[i], mas[i+1]);
                flag := false;
            end;
        end;
    until flag;
    for i := 1 to N do
        writeln(mas[i]);
end.