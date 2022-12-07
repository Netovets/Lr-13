var
  f1, f2: Text;
  s: string;
begin
 assign(f1,'dr.txt');
 assign(f2,'res.txt');
 reset(f1);
 rewrite(f2);
 while not eof(f1) do
  begin
   Readln(f1,s);
   if s <> '' then 
   writeln(f2,s);
  end;
 close(f1);
 close(f2);
 erase(f1);
 rename(f2,'res.txt');
end.