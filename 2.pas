var
  f : text;
  s,d,n, k :integer;
  begin
    assign(f,'da.txt');
    rewrite(f);
    writeln('Введите n и k');
    readln(n,k);
    for s:=1 to n do 
    begin
      for d:= 1 to k do
        write(f,'*');
      Write(f,#10)
    end;
    close(f);
  
    
    
    
    
    
    
  end.
  