var
  s : string;
  f : text;
  begin
    writeln('Введите строку s ');
    readln(s);
    assign(f,'q.txt');
    append(f);
    write(f,s);
    close(f);
    
    
    
    
    
    
  end.