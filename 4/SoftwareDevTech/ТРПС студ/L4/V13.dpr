{��� �����
 3  -1   -2       2
 4  -2   -3       1
 2   2    5       3   ���������: X1=1; X2=3; X3=-1
}
program V13;
{$APPTYPE CONSOLE}
uses
  SysUtils;
const Nmax=10;
var i,j,k,max,kx,ky,n,y: integer;
eps: real;
x,b,sw,s: array [1..Nmax] of real;
a:array [1..Nmax,1..Nmax] of real;
begin

write('������⢮ �ࠢ����� : ');readln(n);
write('������ ���ᨬ��쭮� �᫮ ���権 : '); readln(max);
writeln('������ ������ �����樥�⮢ � ᢮����� 童�� : ');

eps:=0.01;
for i:=1 to n do
for j:=1 to n do begin
write('a',i,j,'=');readln(a[i,j]); end;
writeln;
for i:=1 to n do begin write('b',i,'=');readln(b[i]);end;

for i:=1 to n do x[i]:=0; {�㫥��� �ਡ�������}
k:=0; {���稪 �᫠ ���権}
repeat
     k:=k+1; sw[1]:=0;
   for i:=1 to n do
     begin s[i]:=b[i];
	for j:=1 to n do s[i]:=s[i]-a[i,j]*x[j];
        s[i]:=s[i]/a[i,i];   x[i]:=s[i]+x[i];   sw[1]:=sw[1]+abs(s[i]);
     end;
until (k>=max) or (sw[1]<eps);

 for i:=1 to n do write('  x[',i,'] = ',x[i]:4:4); writeln;
 if k<max then writeln('  k=',k)
          else writeln('�室����� ���');
readln;
end.
