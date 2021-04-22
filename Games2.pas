


function f(i, j: integer; var prev: Dictionary<Tuple<integer, integer>, integer>): integer;
begin
    f := 0;
    if prev.ContainsKey((i, j)) then
        f := prev[(i, j)]
    else if i + j < 47 then begin
        var r := new List<integer>();
        
        if i >= 1 then r.Add(f(i + 1, j + 2));
        if j >= 1 then r.Add(f(i + 2, j + 1));
        if i >= 1 then r.Add(f(i * 2, j));
        if j >= 1 then r.Add(f(i, j * 2));
        if r.All(x -> x > 0) then
            prev[(i, j)] := -r.Max() - 1
        else
            prev[(i, j)] := -r.Where(x -> x <= 0).Max() + 1;
        f := prev[(i, j)];
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
    var prev := new Dictionary<Tuple<integer, integer>, integer>();
    for var i := 1 to 36 do
    begin
        
        if f(i, 10, prev) = -4 then
            writeln(i);
    end;
        
end.