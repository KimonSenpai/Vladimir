function GCD(m, n: integer):integer;(*3, 5*)
begin
    if n = 0 then GCD := m
    else GCD := GCD(n, m mod n) (*5, 3 mod 5 = 5, 3*)
end;