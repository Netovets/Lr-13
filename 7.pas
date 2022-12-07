var
 d, i, s, a, n:integer;
 f : text;
  begin
    assign(f,'z3.in.txt');
    reset(f);
    read(f,i);
    writeln('Введите одно натуральное число');
    readln(n);
    s := 0;
  for i := 1 to n do
  begin
    a := 0;
     for d := 1 to i do
       if i mod d = 0 then
       a := a + 1;
       if a = 5 then
         begin
           s := s + i;
         end;
   end;
 assign(f,'z3.out.txt');
 rewrite(f);
write(f,s);
close(f);

end.