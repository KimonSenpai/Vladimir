
function f(i: integer): integer;
begin
    f := 0;
    if i < 362 then begin
        var r: List<integer> := new List<integer>();
        r.Add(f(i+1));
        r.Add(f(i*6));
        if r.All(x->(x>0)) then begin
            f := -r.Max() - 1;
        end else begin
            f := -r.Where(x->(x<=0)).Max() + 1;
        end;
    end;
    //var l: List<int>;
    
end;

begin
    
    for var i := 1 to 361 do begin
        if f(i) = -4 then
            writeln(i);
    end;
end.