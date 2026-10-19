programa{
	funcao inicio(){

		cadeia nome[3]
		logico erro = falso
		cadeia repe = ""
		
		para(inteiro y = 0;y < 3;y++){
			escreva("Digite seu nome: \n")
			leia(nome[y])
			
			para(inteiro z = 0;z < y;z++){
				se(nome[z] == nome[y]){
					erro = verdadeiro
					repe = nome[z]
				}
			}
		}
		se(erro){
			escreva("Nome repetido: \n")
			escreva(repe)
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 365; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome, 4, 9, 4}-{erro, 5, 9, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */