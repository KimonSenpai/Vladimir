program kr14;

var n, x, m1, m2, m7, m14, mPair, i: integer;

begin
    readln(n);
    for i := 1 to n do begin
        readln(x);
        if x mod 14 = 0 and x * m1 > mPair then 
            mPair := x * m1
        else if x mod 7 = 0 and x * m2 > mPair then
            mPair := x * m2
        else if x mod 2 = 0 and x * m7 > mPair then
            mPair := x * m7
        else if x * m14 > mPair then
            mPair := x * m14;


        if x mod 14 = 0 and x > m14 then m14 := x;
        if x mod 7 = 0 and x > m7 then m7 := x;
        if x mod 2 = 0 and x > m2 then m2 := x;
        if x > m1 then m1 := x;
    end;

    writeln(mPair);
end.