program lab1;

function lg(x: real): real;
begin
    lg := ln(x) / ln(10);
end;

function tg(x: real): real;
begin
    tg := sin(x) / cos(x);
end;

function igor(p, q, g: real): real;
begin
    igor := lg(p * q) + ln(p * g);
end;    

var
    p, g, q, y: real;

begin
    p := 0.65;
    g := tg(sqrt(p));
    q := exp(-p + 1) + exp(-g + 1);
    y := igor(p, q, g);
    writeln('y(p) = ', y:6:3);
end.

