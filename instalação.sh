#!/bin/bash

##########################################################################
#       Autor = Rodrigo (Rbgames Linux)                                  #
#       Tecnico em TI, tecnico em redes e finalizando tecnoloo em Redes  #
#       E-mail = rbgameslinux@gmail.com                                  #
##########################################################################

    # Exibir "leia-me"

clear
echo "==============================="
echo "     LEIA-ME ANTES DE USAR     "
echo "==============================="
echo
echo
echo  "#########################################################"
echo  "# Autor = Rodrigo (Rbgames Linux)                       #"
echo  "# E-mail = rbgameslinux@gmail.com                       #"
echo  "#########################################################"
echo  
echo "Este script foi feito para Archlinux com placas de video AMD."
echo "Este script fará alterações no seu sistema."
echo "Ele instalará pacotes e irá adicionar o usuário ao grupo 'wheel'."
echo "Lembrando que ele foi feito para instalações minimal do archlinux."
echo "ATENCÃO SÓ GPU AMD"
echo "utilize por sua conta e risco"
echo "Tem certeza de que deseja prosseguir."
echo
echo
echo "Se você não concorda, digite 'não' ou 'n'."
echo "Se concorda, digite 'sim' ou 's' para continuar."
echo

 # confirmação do usuário
read -p "Você concorda em continuar? (sim/não): " resposta

    # Converter para minúsculas 
resposta=$(echo "$resposta" | tr '[:upper:]' '[:lower:]')

    # Verificar a resposta
if [[ "$resposta" == "sim" || "$resposta" == "s" ]]; then
  echo "Você concordou! Continuando..."

                      # seu script aqui
 #######################################################################     














 




