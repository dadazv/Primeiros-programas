programa
{
	
	funcao inicio()
	{
		inteiro codigo[4]
		logico repet = falso

		escreva("Digite o primeiro código: \n")
		leia(codigo[1])
		escreva("Digite o segundo código:  \n")
		leia(codigo[2])
		escreva("Digite o terceiro código: \n")
		leia(codigo[3])

		para(inteiro x = 1;x <= 3;x ++){
			para(inteiro y = 0;y < x;y ++){
				se(codigo[x] == codigo[y]){
					repet = verdadeiro
				}
			}
		}
		se(repet){
			escreva("Código negado.\n")
		}
		senao{
			escreva("Código aceito.\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 56; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */