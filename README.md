
# Hyprland + Archlinux p/jogar e usar no dia dia.

<p align="center">
  <img src="https://github.com/user-attachments/assets/112be1e1-24f7-4456-abc0-6eac2ababf6f" width="150" />
</p>

-----
Script para instalação do Hyprland p/Archlinux com minhas Dotfiles.
Este script foi projetado para a instalação minimal do Archlinux conforme os videos do canal.
Esse script já faz a instalação de todos os pacotes necessários para se jogar no Archlinux com Hyprland.
E já faz todas as conmfigs necessárias para se ter um bom funcionamento.
Passos que se deve tomar antes da instalação !!!

`(Assista o video explicativo) link:`

video 1 [Dotfiles](https://youtu.be/6KrKxNsAdYo)

video 2 [utilização do script](https://youtu.be/ezOm_47syUM^)

## 🖥️ Instalação

```
Atenção faça uma instalação do archlinux minimal como mostrado no video !!!!
sudo pacman -S git nano

sudo nano /etc/makepkg.conf

(procurar a linha)

#MAKEFLAGS="-j2" tirar o comentario (#) do inicio dessa linha e aonde está 2, mudar p/quantidade de nucleos do seu processador.

Após isso baixe  o script 

git clone https://github.com/rbgameslinux/pos_install_hyprland.git

cd pos_install_hyprland

chmod +x instalação_GPU_AMD.sh  ou instalação_GPU_Nvidia.sh

./instalação_GPU_AMD.sh ou ./instalação_GPU_Nvidia.sh

Após reiniciar, na tela de login você tem que alterar em session : hyprland (uwsm-manager) p/ hyprland !!!
```
📢 OBS: o script p/Nvidia não funciona em maquina virtual, o da AMD pode ser testado em maquina virtual .

# Informações

Este script personaliza e configurado conforme foi mostrado nos videos do [canal Rbgames](https://www.youtube.com/@RBGameslinux) 

## playlist com todos os [videos](https://youtube.com/playlist?list=PLZymN5kq4bLm2CHxa06M1lwQnWMoWjwJh&si=4bRBaNhB97d-AxF0) 


## Erros
Erros e sugestões podem ser colocadas em [Issues](https://github.com/rbgameslinux/pos_install_hyprland/issues). Quem souber a solução ou souber como fazer a sugestão crie um [pull requests](https://github.com/rbgameslinux/pos_install_hyprland/pulls)

## 📢 Creditos

[x86mota](https://github.com/x86mota)

[Israel](https://neonstoregames.com.br/) (algumas dotfiles) [Neon store Games](https://www.facebook.com/neonstoregameinformatica)

--------
![image](https://github.com/user-attachments/assets/25fa406d-522a-4fe2-baa6-c0c9c8ff7680)

-----
![image](https://github.com/user-attachments/assets/ebe0ae1b-fc03-4ab4-a7f3-3b484f6513d8)

----------
![image](https://github.com/user-attachments/assets/44e3b450-b8b3-4e60-8503-de84f5d987e9)

-----
![image](https://github.com/user-attachments/assets/9010f5ac-1ac1-47a3-be71-36c72d06702f)

-------
![image](https://github.com/user-attachments/assets/66d0717b-59a7-4603-9e3c-49ae03a2395b)


---------    
## Licença

[GNU-GPL](https://github.com/rbgameslinux/pos_install_hyprland/blame/main/LICENSE)





