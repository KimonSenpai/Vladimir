program Fibonachi;

function F(n: integer): integer;
begin
    if n < 2 then F := n
    else F := F(n - 1) + F(n - 2)
end;

var
    n: integer;

begin
    readln(n);
    writeln(F(n));
end.