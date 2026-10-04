program saudacao;
    procedure saudar(nome: string);
    begin
        writeln('Boa noite, ',nome,'!');
    end;
    
var
    nome:string;
begin
    writeln('Digite seu nome: ');
    readln(nome);
    saudar(nome);
end.