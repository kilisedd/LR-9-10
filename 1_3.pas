var
  a, b: integer;
  m: array of integer;
  
function f(n: integer): integer;
begin
  for var i := 0 to n-1 do
  begin
    if m[i] > 0 then
    begin
      a := i;
      break;
    end
    else
      a := 0;
  end;
  for var i := 0 to n-1 do if (m[i] < 0) then b := i;
  println('Первый положительный элемент = ', a);
  println('Последний отрицательный элемент = ',b);
end;

begin
  var n := readinteger;
  setlength(m, n);
  for var i := 0 to n-1 do m[i] := readinteger();
  f(n);
end.