var ar:array[1..63] of integer;
i:integer;

begin
  for i := 1 to 63 do ar[i] := 0;
  ar[7]:=1;
  for i:=8 to 63 do begin
    if i = 43 then continue;
    ar[i]:=ar[i]+ar[i-2];
    if i mod 2 <> 0 then
      inc(ar[i], (ar[i div 2]+ar[i-(i div 2)]));
  end;
  writeln(ar[63]);
end.