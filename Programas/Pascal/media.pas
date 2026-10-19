program media;
    function media(n1,n2,n3:real):real;
    begin
        media := (n1 + n2 + n3)/3;
    end;
    
var
    n1,n2,n3:real;
begin
    writeln('Digite sua nota: ');
    readln(n1);
    writeln('Digite sua nota: ');
    readln(n2);
    writeln('Digite sua nota: ');
    readln(n3);
    
    writeln('Sua média foi: ',media(n1,n2,n3):2:0);
end.