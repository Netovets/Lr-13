var
  f1, f2 : text;
  s : string;
  d, n, str, i : integer;
begin
  writeln('Создание текстового файла');
  assign(f1, 'yep.txt');
  rewrite(f1);
  write('Количество строк = ');
  readln(str);
  writeln('Заполните строки');
  for i := 1 to str do
    begin
      write('Строка ', i, ' = ');
      readln(s);
      writeln(f1,s);
    end;
  close(f1);
  write('Номер строки, перед которой поставить пустую строку ');
  readln(n);
  assign(f2,'1.txt');
  rewrite(f2);
  reset(f1);
  d := 1;
  while not eof(f1) do
    begin
      readln(f1,s);
      if n = d then
        writeln(f2);
        inc(d);
        writeln(f2,s);
    end;
  close(f1);
  close(f2);
  erase(f1);
  rename(f2, 'yep.txt');
  writeln('Откройте файл (yep)');
end.