programa
{
	
	funcao inicio(){
		inteiro vagas[30], valor, menu, sn=1
		faca{
			escreva("----------------------\n1-Entrada de Veículo\n2-Saída de Veículo\n3-Listar vagas\n4-Sair do programa\n----------------------\n")
			leia(menu)
			escolha(menu){
				caso 1:
					escreva("Entre com o valor da vaga.")
					leia(valor)
					valor-=1
					se(confere(valor)==verdadeiro){
						entrada(valor,vagas)
					}
					pare
					
				caso 2:
					escreva("Entre com o valor de sua vaga.")
					leia(valor)
					valor-=1	
					se(confere(valor)==verdadeiro){
						saida(valor,vagas)
					}
					pare
				caso 3:
					lista(vagas)
					pare
				caso 4:
					sn=0
			}
			//limpa()
		}enquanto(sn==1)
	}
	funcao vazio entrada(inteiro i,inteiro &j[]){
		se(ocupado(i,j)==verdadeiro){
			escreva("\nVaga reservada com sucesso!\n\n")
			j[i]=1
		}senao{
			escreva("\nVaga ocupada.\n\n")

		}
		
	}
	funcao vazio saida(inteiro i,inteiro &j[]){
		se(ocupado(i,j)==verdadeiro){
			escreva("\nVaga não está ocupada.\n\n")
		}senao{
			escreva("\nO veículo saíu da vaga escolhida!\n\n")
			j[i]=0
		}
	}
	funcao logico confere(inteiro i){
		logico l=verdadeiro
		se(i>29 ou i<0){
			escreva("Vaga inexistente. Escolha um valor entre 1 e 30.\n")
			l=falso
		}
		retorne l
	}
	funcao logico ocupado(inteiro i, inteiro j[]){
		logico o
		o= j[i]==0
		retorne o
	}
	funcao vazio lista(inteiro j[]){
		para(inteiro o=0;o<=29;o++){
			se(j[o]==1){
				escreva(o+1,"---Ocupado\n")
			}senao{
			 escreva(o+1," --- Livre\n")
			}
		}
		retorne
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1225; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */