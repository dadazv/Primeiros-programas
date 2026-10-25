program Turma;
var
    nota1,nota2,nota3,m:real;
    i,y:integer;
    
    procedure Cadastro;
    begin
        writeln('=== Cadastro de notas ===');
        writeln('');
        writeln('Digite sua primeira nota: ');
        readln(nota1);
        writeln('Digite sua segunda nota: ');
        readln(nota2);
        writeln('Digite sua terceira nota: ');
        readln(nota3);
    end;
    function Media(nota1,nota2,nota3:real):real;
    begin
        media := (nota1 + nota2 + nota3)/3;
    end;
begin
    writeln('=== Sistema de notas ===');
    writeln('');
    writeln('Digite a quantidade de alunos: ');
    readln(y);
    for i := 1 to y do
    begin
        Cadastro();
        m := Media(nota1,nota2,nota3);
        writeln('=== Relatório ===');
        writeln('');
        writeln('1 Nota: ',nota1:0:2);
        writeln('2 Nota: ',nota2:0:2);
        writeln('3 Nota: ',nota3:0:2);
        if (m < 0.0) or (m > 10.0) then
        begin
            writeln('Média inválida!');
        end
        else
        begin
            if (m > 7.0) then
            begin
                writeln('Situação: Aprovado');
            end
            else
            begin
                if (m >= 4.0) and (m < 7.0) then
                begin
                    writeln('Situação: Recuperação');
                end
                else
                begin
                    writeln('Situação: Reprovado');
                end;
            end;
        end;
        writeln('Sua média foi: ',m:0:2);
    end;
    writeln('Alunos cadastrados: ',y);
end.