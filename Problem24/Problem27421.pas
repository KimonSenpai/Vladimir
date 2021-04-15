program Problem27421;

var str: string;
    f: text;
    prev: char;
    l, lmax, i: integer;
   


begin
    assign(f, '24_demo.txt');
    reset(f);
    readln(f, str);
    close(f);
    l := 0;
    lmax := 0;
    prev := 'A';
    for i := 1 to str.Length do begin
        if str[i] <> prev then inc(l)
        else begin
            if l > lmax then lmax := l;
            l := 1;
        end;
        prev := str[i];
    end;
    lmax := max(l, lmax);
    writeln(lmax);
end.