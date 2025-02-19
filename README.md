# Hyprland com Archlinux pronto p/jogar e usar no dia dia.
-----------------------------------------------------------

Script para instalação do Hyprland p/Archlinux com minhas Dotfiles. 

Este script foi projetado para a instalação minimal do Archlinux conforme os videos do canal.

Esse script já faz a instalação de todos os pacotes necessários para se jogar no Archlinux com Hyprland.

E já faz todas as conmfigs necessárias para se ter um bom funcionamento.

Passos que se deve tomar antes da instalação !!!

(se poder assista o video explicativo) link:

video 1 https://youtu.be/6KrKxNsAdYo

video 2 https://youtu.be/ezOm_47syUM

-------------------------------------------------------------

sudo pacman -S git nano

sudo nano /etc/makepkg.conf
"procurar a linha"

#MAKEFLAGS="-j12" tirar o comentario (#) do inicio dessa linha e aonde está 12 mudar p/quantidade
de nucleos do seu cpu.

Após isso baixe  o script 

git clone https://github.com/rbgameslinux/pos_install_hyprland.git

cd pos_install_hyprland

chmod +x instalação_GPU_AMD.sh  ou instalação_GPU_Nvidia.sh

./instalação_GPU_AMD.sh ou ./instalação_GPU_Nvidia.sh

Após reiniciar, na tela de login você tem que alterar em session : hyprland (uwsm-manager) para hyprland !!!

---------------------------------------------------------------

E já vem personalizado e configurado conforme foi mostrado nos videos da playlist do canal 

https://www.youtube.com/@RBGameslinux

playlist com todos os videos 

https://youtube.com/playlist?list=PLZymN5kq4bLm2CHxa06M1lwQnWMoWjwJh&si=4bRBaNhB97d-AxF0

Erros e sugestões podem ser colocadas em Issues, quem quiser ajudar no projeto seja bem vindo.


![credito-removebg-preview](https://github.com/user-attachments/assets/472f3a56-b85d-49c0-a863-0185e792bb05)

Creditos:

x86mota (Nvidia)
https://github.com/x86mota

Israel  (algumas dotfiles)


![image](https://github.com/user-attachments/assets/25fa406d-522a-4fe2-baa6-c0c9c8ff7680)
![image](https://github.com/user-attachments/assets/ebe0ae1b-fc03-4ab4-a7f3-3b484f6513d8)
![image](https://github.com/user-attachments/assets/44e3b450-b8b3-4e60-8503-de84f5d987e9)
![image](https://github.com/user-attachments/assets/9010f5ac-1ac1-47a3-be71-36c72d06702f)
![image](https://github.com/user-attachments/assets/66d0717b-59a7-4603-9e3c-49ae03a2395b)






