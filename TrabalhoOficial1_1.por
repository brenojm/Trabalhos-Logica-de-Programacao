programa
{

    funcao inicio()
    {
	    inteiro linha=0, coluna=0, reserva = 0, sala[10][12]
	    faca{
		    escreva("---Reservas de poltronas sala 01---\n\n")
		    escreva("   0  1  2  3  4  5  6  7  8  9  10 11\n\n")
		    para(inteiro i=0; i <= 9; i++){
			    escreva(i,"  ")
			    para(inteiro j=0; j <= 11; j++){
			    	    escreva(sala[i][j],"  ")
			    }
    		    escreva("\n")
    		    }
    		    escreva("\nLinha e coluna desejada: \n")
		    leia(linha,coluna)
		    limpa()
		    enquanto(linha > 9 ou coluna > 11){
			    escreva("Poltrona inválida, escolha outra:")
			    leia(linha,coluna)
	    	    }
	    	    se(linha >= 0 e coluna >= 0 e sala[linha][coluna] == 1){
			    escreva("Poltrona já reservada, escolha outra:\n\n")
		    }
    		    se (linha >= 0 e coluna >= 0 e sala[linha][coluna] != 1){
			    sala[linha][coluna] = 1
			    escreva("Poltrona reservada com sucesso!\n\n")
			    reserva++
			    }
	    }enquanto(linha >= 0 e coluna >= 0)
	    se(reserva == 0){
	      	 escreva("Você não reservou nenhuma poltrona!")
	    }senao se(reserva == 1){
	    	 	 escreva("Você reservou uma poltrona!")
	    	 }senao{
	    	 	 escreva("Você reservou ",reserva," poltronas.")
	    	 }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 588; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */