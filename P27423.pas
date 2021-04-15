program p27423;

var mas: array[1..1000] of integer;
    S, N: integer;
    f: text;
    i, j: integer;
    count, max: integer;
    
procedure swap(var a, b: integer);
var t: integer;
begin
    t := a;
    a := b;
    b := t;
end;

begin
    assign(f, '26_demo.txt');
    reset(f);
    readln(f, S, N);
    
    for i := 1 to N do
        readln(f, mas[i]);
    close(f);
    for i := 1 to N do
        for j := i + 1 to N do
            if mas[i] > mas[j] then
                swap(mas[i], mas[j]);
            
    count := 0;
    for i := 1 to N do begin
        if S - mas[i] >= 0 then begin
            Inc(count);
            (*max := mas[i];*)
            S := S - mas[i];
        end else begin
            break;
        end;
    end;
    S := S + mas[count];
    for i := 1 to N do
        if mas[i] <= S then
            max := mas[i];
    writeln(count,' ', max);
end.