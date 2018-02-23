
Program Saison;
Var mois :integer;
Begin
  Writeln(‘Donnez le mois ?’);
  Readln(mois);
  Case Mois of
    12,1,2: writeln(‘Hiver’);
    3..5 : writeln(‘printemps’);
    6..8: writeln(‘Eté’);
    9..11 : writeln(‘Automne’)
    Else writeln(‘Mois invalid’)
  End
  ;
  Readln;
End.
