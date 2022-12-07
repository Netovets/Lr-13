var
  s,q,sum,r : integer;
  d : string;
  f : text;
  begin
    writeln('Введите 10 чисел');
  assign(f,'1.txt');
  rewrite(f);
  for s := 1 to 10 do
  begin
    write(s,' число = ');
    readln(d);
    writeln(f,d);
  end;
  close(f);
  reset(f);
  for s:=1 to 10 do
  begin
    readln(f,d);
    val(d,q,r);
    sum := sum + q
end;
writeln('Их сумма = ',sum);
  close(f); 
end.