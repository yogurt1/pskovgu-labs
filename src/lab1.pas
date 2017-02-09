program lab1;

const
  g: real = 9.8;

function tg(x: real): real;
begin
    tg := sin(x) / cos(x);
end;

function formula(v, t: real): real;
begin
    formula := (
      sqr(g) + sqr(t) / sin(v * t)
    ) + (
      sqr(v) + sqr(g) / cos(g * t)
    );
end;    

var
    v, t, z: real;

begin
    t := 0.5 * sqr(tg(g));
    v := sqrt(sqr(g) + sqr(t));
    z := formula(v, t);
    writeln('z(g) = ', z:6:3);
end.

