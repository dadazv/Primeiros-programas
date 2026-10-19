programa
{
	funcao inicio()
	{
		real notas[10]
		real menor = 10.0,soma = 0.0,media = 0.0,maior = 0.0
		inteiro repro = 0,apro = 0,acimM = 0

		escreva("=== Cadastro de Notas === \n")
		para(inteiro i = 0;i < 10;i ++){
			escreva("Digite sua nota: \n")
			leia(notas[i])
				
			se(notas[i] < 0.0 ou notas[i] > 10.0){
				escreva("Nota inválida.\n")
				i = i - 1	
			}
			senao{
				soma = soma + notas[i]
				se(notas[i] > maior){
					maior = notas[i]	
				}
				se(notas[i] < menor){
					menor = notas[i]	
				}
				se(notas[i] >= 7.0){
					apro = apro + 1
				}
				senao{
					repro = repro + 1
				}	
			}
		}
		
		media = soma / 10.0
		para(inteiro i = 0; i < 10; i++){
            se(notas[i] > media){
                acimM = acimM + 1
            }
		}
		escreva("=== Resultados === \n")
		escreva("\n")
		escreva("Média da turma: ",media,"\n")
		escreva("A maior nota foi: ",maior,"\n")
		escreva("A menor nota foi: ",menor,"\n")
		escreva("\n")
		escreva("Aprovados: ",apro,"\n")
		escreva("Reprovados: ",repro,"\n")
		escreva("Notas acima da média: ",acimM,"\n")
		escreva("\n")
		
		para(inteiro i = 9;i >= 0;i --){
			escreva(i + 1," - Nota: ",notas[i],"\n")	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1153; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */