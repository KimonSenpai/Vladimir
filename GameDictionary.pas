
type tp = System.Tuple<integer, integer>;
var
    res := new Dictionary<tp, integer>();

function f(i, j: integer): integer;
begin
    f := 0;
    if res.ContainsKey((i, j)) then
        f := res[(i, j)]
    else if i + j < 77 then begin
        var l: List<integer> := new List<integer>();
        l.Add(f(i + 1, j));
        l.Add(f(i*2, j));
        l.Add(f(i, j + 1));
        l.Add(f(i, j*2));
        if l.All(x -> (x > 0)) then res[(i, j)] := -l.Max() - 1
        else res[(i, j)] := -l.Where(x -> (x <= 0)).Max() + 1; 
        
        f := res[(i, j)];
    end;
   
end;

begin
 
    for var i: integer := 1 to 69 do
    begin
        var j := 7;
        var l: List<integer> := new List<integer>();
        l.Add(f(i + 1, j));
        l.Add(f(i*2, j));
        l.Add(f(i, j + 1));
        l.Add(f(i, j*2));
        if l.Any(x -> x = 1) then begin
            writeln(i);
            break;
        end;
    end;
    for var i := 1 to 69 do
        if f(7, i) = 3 then
            write(i, ' ');
    writeln('');
    for var i := 1 to 69 do
        if f(7, i) = -4 then begin
            write(i);
            break;
        end;
    writeln('');
end.
