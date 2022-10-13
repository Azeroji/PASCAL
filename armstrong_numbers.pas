Program armstrong_numbers;
Var
  S,A,B,N,i,j,k,power,digits: Integer;

Function pwr(a,b:Integer): Integer;
Begin
  power := 1;
  For j := 1 To b Do
    Begin
      power := power * a;
    End;
  pwr := power;
End;

Function digit(number:Integer): Integer;
Begin
  digits := 1;
  While (number Div 10) > 0 Do
    Begin
      digits := digits + 1;
			number := number div 10;
    End;
  digit := digits;
End;
Begin
  Writeln('Entrer A: ');
  Readln(A);
  Writeln('Entrer B: ');
  Readln(B);
  Writeln('Liste des nombres Armstrong de A à B:');
  For i := A To B Do
    Begin
      N := i;
      S := 0;
      S := S + pwr((N mod 10),digit(i));
      While (N Div 10) > 0 Do
        Begin
          N := N Div 10;
          S := S + pwr((N mod 10),digit(i));
        End;
      If S = i Then
        Begin
          Writeln(i);
        End
      Else
        Begin
        End;
    End;
  Readln(S);
End.
