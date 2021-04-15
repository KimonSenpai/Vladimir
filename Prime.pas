program Prime;

const a = 3000;
      b = 3200;
var i, j: integer;
    pr: boolean;

begin
    for i := a to b do begin
        pr := true;
        for j := 2 to trunc(sqrt(i)) do
            if i mod j = 0 then
                pr := false;
        if pr then
            writeln(i);
        
    end;
end.