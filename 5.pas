var
  f1, f2 : text;
  s, max, min : integer;
    begin
      assign(f1,'input.txt');
      assign(f2,'output.txt');
      reset(f1);
      rewrite(f2);
      reset(f1);
while (not eof(f1)) and (s < 100) do
      begin
      read(f1,s);
      if s > max then
         max := s;
      if s < min then
         min := s; 
      end;
writeln(f2,'Максимальное число =  ', max);
writeln(f2,'Минимальное число  = ', min);
close(f1);
close(f2);
end.