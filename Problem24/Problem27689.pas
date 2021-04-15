(*
012012012
c[i] = (c[i-1] + 1) mod 3;
c[i] = chr((ord(c[i-1]) - ord('X') + 1) mod 3 + ord('X'))
88 89 90 88 89 90
0 1 2 0 1 2
*)

program Problem27689;

var str: string;
    f: text;
    prev: char;
    l, lmax, i: integer;
   
function fromc(x:char):integer;
begin
    case x of
        'L': fromc := 0;
        'D': fromc := 1;
        'R': fromc := 2;
    end;
end;

function toc(x:integer):char;
begin
    x := x mod 3;
    case x of
        0: toc := 'L';
        1: toc := 'D';
        2: toc := 'R';
    end;
end;

begin
    assign(f, '24_demo.txt');
    reset(f);
    readln(f, str);
    close(f);
    l := 0;
    lmax := 0;
    prev := 'A';
    for i := 1 to str.Length do begin
        if (l = 0) and (str[i] = 'X') then begin
            l := 1;
        end else if (l > 0) and (fromc(str[i]) = (fromc(prev) + 1) mod 3) then
            inc(l)
        else if l > 0 then begin
            lmax := max(lmax, l);
            if str[i] = 'X' then l := 1
            else l := 0;
        end;
        prev := str[i];
    end;
    lmax := max(lmax, l);
    writeln(lmax);
end.