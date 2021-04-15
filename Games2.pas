


function f(i, j: integer): integer;
begin
    f := 0;
    if i + j < 47 then begin
        var r := new List<integer>();
        
        if i >= 1 then r.Add(f(i + 1, j + 2));
        if j >= 1 then r.Add(f(i + 2, j + 1));
        if i >= 1 then r.Add(f(i * 2, j));
        if j >= 1 then r.Add(f(i, j * 2));
        if r.All(x -> x > 0) then
            f := -r.Max() - 1
        else
            f := -r.Where(x -> x <= 0).Max() + 1;
    end;
end;

function gen(i, j: integer): List<integer>;
begin
    var r := new List<integer>();
    if i >= 1 then r.Add(f(i + 1, j + 2));
    if j >= 1 then r.Add(f(i + 2, j + 1));
    if i >= 1 then r.Add(f(i * 2, j));
    if j >= 1 then r.Add(f(i, j * 2));
    gen := r;
end;

begin
    for var i := 1 to 36 do
    begin
        
        if f(i, 10) = -4 then
            writeln(i);
    end;
        
end.