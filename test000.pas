
program equation2_EX01;
Uses Dos, Crt;
Var A, B, C, D : real;	
X1, X2 : real;
Begin
{Entrée des coefficients de l'équation}
Writeln('Entrez le premier coefficient A :');
Readln(A);
Writeln('Entrez le second coefficient B :');
Readln(B);
Writeln('Entrez le coefficient C :');
Readln(C);
writeln (A,'X²+',B,' X + ' ,C,'= 0 ');
{Calcul et sortie des solutions}
If A = 0 Then
      If B = 0 Then
If C = 0 Then
Writeln('Toutes les valeurs sont admises !')
else
	Writeln('Aucune valeur n''est admise !')
else
        Begin
	     X1:=-C/B;
Writeln('Seule la valeur ', X1:2:2, ' est admise !');
	End
Else
	Begin
		D:=B*B - (4 * A * C);
		If D>=0 Then
		   If D=0 Then
		begin
			X1:=-B/(2*A);
			Writeln('La valeur ', X1:2:2, ' est admise deux fois !');
		End
			Else
			Begin
				X1:=(-B-Sqrt(D)) / (2*A);
				X2:=(-B+Sqrt(D)) / (2*A);
				Writeln('Les valeurs ', X1:2:2, ' et ', X2:2:2, ' sont admises !');
			End
		  Else
		    Begin
			Writeln('Aucunevaleur reel n''estadmise !');
		End;
End;
readln;
End.
Program Saison ;
Var mois :integer;
Begin
   Writeln(‘Donnez le mois ?’) ;  Readln(mois) ;


Case Mois of 
12,1,2: writeln(‘Hiver’);
3..5 : writeln(‘printemps’);
6..8: writeln(‘Eté’);
9..11 : writeln(‘Automne’)
Else writeln(‘Mois invalid’) 
End ;
Readln ;
End.

{program EXO3_01;
Vara,i,s,some:integer;
begin
   {Remarque: on peut modifier le programme pour
afficher les nombres comprise entre deux valeurs A et B
writeln ('les valeurs comprise entre 0 et 10 sont:');
i:= 0;
whilei<9 do
begin
i:=i+1;
writeln ('i=',i);
end;
readln
end.    }

program EXO3_02;
vari,a,b:integer;
begin
   {Remarque : on peut modifier le programme pour
    Afficher les nombres comprise entre deux valeurs A et B avec a<b
    Comme on peut afficher les nombre dans un ordre décroissant
    Donc il suffit de changer les bornes : attention boucle infini}
writeln ('donner a');
readln (a);
writeln ('donner b');
readln (b);
writeln ('les valeurs comprise entre ',A, ' et ',b ,' sont:');
i:= A;
whilei<b-1 do
begin
i:=i+1;
writeln ('i=',i);
end;
readln
end.

program EXO4;
vari,a,b,c,d:integer;
begin
   {Remarque: on peut modifier le programme pour
afficher les nombres comprise entre deux valeurs A et B avec a<b
comme on peut afficher les nombre dans un ordre decroissant
donc il siffut de changer les bornes avec decopmtage du compteur
     : attension boucle infini}

writeln ('donner a');
readln (a);
writeln ('donner b');
readln (b);
writeln ('les valeurs comprise entre ',A, ' et ',b ,' sont:');
if a<b then
begin
c:=a;
d:= b;
end
else
begin
c:=b;
d:= a;
end;
i:= c;
whilei<d-1 do
begin
i:=i+1;
writeln ('i=',i);
end;
readln
end.



program factoriel_ex05;
usescrt;
var
fact,i,n:integer;
begin
clrscr;
{ Remarque :
1:ici Fact doit etre initialiser a 1 et non pas 0
2:faire la remarque que si on inclus le writeln dans la boucle
on affiche chaque fois le fact
3: si fait entrer la valeur 8 on va avoir un debordement
et pour la corriger il faut modifier le type
integer par un autre type : word
  }
writeln ('donner un nombre n < = 8');
readln (n);

fact:=1;
fori :=1 to n do
begin
fact:= fact *i;
end ;
WriteLn( n ,'!=',fact);
readln
end.

program EXO6;
vara,b,i,np,nimp,c,d:integer;
begin
   {Remarque:fair la remarque que begin et end de IF peuvent etre enlever
    car on a une seul instruction }
writeln ('donner a');
readln (a);
writeln ('donner b');
readln (b);
if a<b then
begin
c:=a;
d:= b;
end
else
begin
c:=b;
d:= a;
end;

i:= c;
np:=0;
nimp:=0;
whilei<d-1 do
begin
i:=i+1;
ifi mod 2=0 then
begin
np:=np+1;
end
else
begin
nimp:=nimp+1;
end;
end ;
writeln ('le nb des  nb pair comprise entre ',c, ' et ', d, ' est ' ,np);
writeln ('le nb des  nb impaire comprise entre ',c, ' et ',d , ' est ' ,nimp);
readln
end.


program ex07;
usescrt;
vars,a,b,i,c,d:integer;
begin
clrscr;
{ Remarque :
1:ici Fact doit etre initialiser a 1 et non pas 0
2:faire la remarque que si on inclus le writeln dans la boucle
on affiche chaque fois le fact
3: si fait entrer la valeur 8 on va avoir un debordement
et pour la corriger il faut modifier le type
integer par un autre type : word
  }
writeln ('donner un nombre a');
readln (a);
writeln ('donner un nombre B');
readln (B);
if a<b then
begin
c:=a;
d:= b;
end
else
begin
c:=b;
d:= a;
end;

s:=0;
fori :=c to d do
begin
s:= s+i;
end ;
Writeln( 'la sommes des nb comprise entre ',a , ' et ' , b , ' est : ',s );
readln
end.

program ex08_01;
usescrt;
var
s,a,b,i,c,d:integer;
begin
clrscr;

writeln ('donner un nombre a');
readln (a);
writeln ('donner un nombre B');
readln (B);
if a<b then
begin
c:=a;
d:= b;
end
else
begin
c:=b;
d:= a;
end;

s:=0;
i:=c ;
repeat
begin
s:= s+sqr(i);
i:=i+1;
end ;
until i>d;
Writeln( 'la sommes carree des nbs comprise entre ',c , ' et ' , d , ' est : ',s );
readln
end.

{program ex08_02;
usescrt;

var
s,a,b,i,c,d:integer;
begin
clrscr;
  {
writeln ('donner un nombre a');
readln (a);
writeln ('donner un nombre B');
readln (B);
if a<b then
begin
c:=a;
d:= b;
end
else
begin
c:=b;
d:= a;
end;

s:=0;
fori :=c to d do
begin
s:= s+sqr(i);
end ;
Writeln( 'la sommes carree des nbs comprise entre ',c , ' et ' , d , ' est : ',s );
readln
end.}


{program ex09_01;
usescrt;
var
s,a,b,i,c,d:integer;
begin
clrscr;

writeln ('donner un nombre dec');
readln (a);

repeat
b:= dec div 2;
c:= dec mod 2;
dec:= b;
writeln (c);
until (b = 0);
readln
end.}

program ex09_02;
usescrt;

const N =20;
var   bin : array [0..N] of integer;
temp,dec,b,i,c,d:integer;
begin
clrscr;

writeln ('donner un nombre decemal');
readln (dec);
 I:=0;
repeat
temp:= dec div 2;
bin[i]:= dec mod 2;
dec:= temp ;
i:=I+1;
until (dec= 0);
for i:= N downto 0 do
writeln (bin[i]);
readln
end.


Program fibo ;
Var N,U1,U2,Un,I :integer;
Begin
   Writeln(‘Donnez N?’) ;  Readln(n) ; U1 :=1 ;    U2:=1;
    For i:=1 to N do  begin Un:= U1+U2; U1:=U2 ; U2 := Un end; 
    Writeln(‘le’,N, ‘ieme Terme =’, Un); readln; end.

program pgcd_ex11;
vara,b,x,y,z:integer;
begin
writeln (' donner a');
readln(a);
writeln (' donner b');
readln(b);
IF A>B THEN
 BEGIN
x:=a;
y:=b;
 END
ELSE
 BEGIN
x:=B;
y:=A;
 END;
repeat
z:= x - y;
if y> z then
begin
x:= y;
y:=z;
end
else
begin
x:= z;
y:=y;
end

until z=0 ;
writeln ('PGCD DE   ',A,'et',B,'est :', x);
readln
end.



program exo12;
vark,n:integer;
s:real;
begin
writeln (' donner n');
readln(n);
s:=0;
for k:=0 to n do
begin
if k mod 2 =0 then
s:=s+(1/(2*K+1))
else
s:=s-(1/(2*K+1));
writeln ('la serie Sn pour n=',k,':', s);
end;
readln
end.
program exo13;
var s:String;
k:integer;
begin
writeln (' donner Votre message);
readln(s);
k:=1;
While  k <  lenght(s) do
begin
temp := s[K] ;
s[k] := s[k+1];
s[k+1] := temp;
K:=K+2;
end;
Wtrilteln(‘Votre message après permutation ’,s)
readln
en
program lire_tab_ex_14;
uses crt;
const n=6;
varmin,max,i,j:integer;
t,a:Array[1..n] of integer;
begin
clrscr;
{writeln ('donner la dimension du vecteur n');
readln (n); }
writeln (' donner le vecteur a');
for i:= 1 to n do
begin
TEXTCOLOR(i);
readln (t[i]);
end;

for i:= 1 to n do
begin
textcolor(i*2);
write(t[i])
end;
readln
end.



program somme_tab_ex15;
uses crt;
const n=6;
vari,j:integer;
t,a,s:Array[1..n] of integer;
begin
clrscr;
{writeln ('donner la dimension du vecteur n');
readln (n); }
writeln (' donner le vecteur t');
for i:= 1 to n do
begin
TEXTCOLOR(i);
gotoxy (5,I+10);
readln (t[i]);
end;
writeln (' donner le vecteur a');
for i:= 1 to n do
begin
TEXTCOLOR(i);
gotoxy (10,I+10);
readln (a[i]);
end;
for i:= 1 to n do
begin
textcolor(i*2);
gotoxy (20,I+10);
s[i]:= t[i]+ a[i] ;
writeln(s[i])
end;
readln
end.

program permut_tab_EX17;
vartemp,i, case1,case2:integer;
tab:Array[1..5] of integer;
begin
writeln ('***ce program fait la permutation entre 2 case d un tableau***');
writeln ('************** de dimension N=5*************') ;
writeln (' entree les valeur de la table');
for i:= 1 to 5 do
begin
readln (tab[i]);
end;
writeln (' la table est ');
writeln ('entree le n de la premier case a permuter');
readln(case1);
writeln ('entree le n de la deuxieme case a permuter');
readln(case2);
temp:=tab[case1];
tab[case1]:= tab[case2];
tab[case2]:= temp;
for i:= 1 to 5 do
begin
writeln (tab[i]);
end;
readln end. 
program MAX_tab_EX18;
usescrt;
const n=3;
varmin,max,i,j:integer;
t,a:Array[1..n, 1..N] of integer;
begin
clrscr;
{writeln ('donner la dimension du vecteur n');
readln (n); }
writeln (' donner le vecteur a');
for i:= 1 to n do
for j:= 1 to n do
begin
gotoxy(i+I*2,j+10);
TEXTCOLOR(I+J*i);
readln (t[i,j]);
end;
max:=t[1,1];
for i:= 1 to n do
for J:= 2 to n do
begin
if MAX< t[i,j] then
max:= t[i,j]
else max:= max;
end;
TEXTCOLOR(GREEN);
writeln ('le max s est:',max);
readln
end.


program lire_mat_EX20;
uses crt;
const n=3;
vari,j:integer;
mat:Array[1..n, 1..N] of integer;
begin
clrscr;
writeln (' donner la mateice tab');
for i:= 1 to n do
for j:= 1 to n do
begin
gotoxy(i+I*2,j+10);
TEXTCOLOR(I+J);
readln (mat[i,j]);
end;
for i:= 1 to n do
for J:= 1 to n do
writeln( mat[i,j]);
readln
end.





