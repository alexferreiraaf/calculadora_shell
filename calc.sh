#!/bin/bash
#Limpa a tela
clear
#Leitura das variáveis num1 e num2, com a garantia de que o usuário digitará
somente números
until grep -E ^[0-9./]+$ <<< $num1
do
clear
echo "ATENÇÃO! DIGITE SOMENTE NÚMEROS"
read -p "Digite o primeiro número: " num1
done
until grep -E ^[0-9./]+$ <<< $num2
do
clear
echo "ATENÇÃO! DIGITE SOMENTE NÚMEROS"
read -p "Digite o segundo número: " num2
done
clear
#Condição de repetição: se digitar "7" sai do laço e do programa
while ! [ "$A" = "7" ]; do
#Exibe num1
echo "O primeiro número é: $num1 "
#Exibe num2
echo "O segundo número é: $num2 "
#Diz para o usuário escolher uma opção de 1 à 7, conforme pequeno menu
exibido"
echo "Digite uma opção: "
echo " (1) para adição -> "
echo " (2) para subtração -> "
echo " (3) para multiplicação -> "
echo " (4) para divisão -> "
echo " (5) para potenciação -> "
echo " (6) para raíz quadrada -> "
echo " (7) SAIR! SAIR! SAIR! -> "
#Leitura da opção do usuário
read OPCAO
#Realiza a operação conforme opção do usuário
case $OPCAO in
1)
#Faz a soma dos dois números e exibe o resultado
clear
echo "$num1 + $num2 é: `echo "$num1 + $num2" | bc -l` "
;;
2)
#Faz a subtração do primeiro pelo segundo, e vice-versa.
#Exibe o resultado
clear
echo "$num1 - $num2 é: `echo "$num1 - $num2" | bc -l` "
echo "$num2 - $num1 é: `echo "$num2 - $num1" | bc -l` "
;;
3)
#Faz a multiplicação dos dois número e exibe o resultado
clear
echo "$num1 * $num2 é: `echo "$num1 * $num2" | bc -l` "
;;
4)
#Faz a divisão do primero pelo segundo, e vice-versa
#Faz o tratamento da divisão por 0 (Condição)
#Exibe o resultado
clear
if [ "$num2" = "0" ] || [ "$num2" = "0.0" ]; then
echo "$num1 / $num2 é: Divisão por zero "
else
echo "$num1 / $num2 é: `echo "(($num1) /
($num2))" | bc -l` "
fi
if [ "$num1" = "0" ] || [ "$num1" = "0.0" ]; then
echo "$num2 / $num1 é: Divisão por zero "
else
echo "$num2 / $num1 é: `echo "(($num2) /
($num1))" | bc -l` "
fi
;;
5)
#Faz a potenciação do primeiro elevado ao segundo, e
vice-versa
#Exibe o resultado
clear
echo "$num1 elevado à $num2 é: `echo "($num1) ^ ($num2)"
| bc -l` "
echo "$num2 elevado à $num1 é: `echo "($num2) ^ ($num1)"
| bc -l` "
;;
6)
#Faz a raíz quadrada do primeiro e a raíz quadrada do
segundo
#Exibe o resultado
clear
echo "Raíz quadrada de $num1 é: `echo "sqrt($num1)" | bc
-l` "
echo "Raíz quadrada de $num2 é: `echo "sqrt($num2)" | bc
-l` "
;;
7)
#Esta opção realiza a saída do programa
clear
A=$OPCAO
;;
*)
#Exibe uma mensagem singela, caso o usuário insista numa
opção inválida
clear
echo "OPÇÃO INVÁLIDA, SEU BESTA!!!!!!!!!!!!!!"
;;
esac
done