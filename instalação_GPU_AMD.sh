#!/bin/bash

##########################################################################
#    Autor = Rodrigo (Rbgames Linux)                                     #
#    Tecnico em TI, tecnico em redes e finalizando tecnologo em Redes    #
#    E-mail = rbgameslinux@gmail.com                                     #
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
echo "Irá adicionar suporte ao aur via yay e instalará pacotes do aur."
echo "Ele instalará pacotes e irá adicionar o usuário ao grupo 'wheel'."
echo "Lembrando que ele foi feito para instalações minimal do archlinux."
echo "ATENCÃO SÓ GPU AMD !!!"
echo "Utilize por sua conta e risco"
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

clear

echo -e "\033[1;34m"
echo "\`7MM\"\"\"Mq.  \`7MM\"\"\"Yp,       .g8\"\"\"bgd                                             ";
echo "  MM   \`MM.   MM     Yb    .dP'     \`M                                                      ";
echo "  MM   ,M9    MM     dP    dM'       \`   ,6\"Yb.  \`7MMpMMMb.pMMMb.   .gP\"Ya  ,pP\"Ybd      ";
echo "  MMmmdM9     MM\"\"\"bg.     MM           8)   MM    MM    MM    MM  ,M'   Yb 8I   \`\"      ";
echo "  MM  YM.     MM     \`Y    MM.    \`7MMF' ,pm9MM    MM    MM    MM  8M\"\"\"\"\"\" \`YMMMa.  ";
echo "  MM   \`Mb.   MM     ,9    \`Mb.     MM  8M   MM    MM    MM    MM  YM.    , L.   I8         ";
echo ".JMML. .JMM..JMMmmmd9        \`\"bmmmdPY  \`Moo9^Yo..JMML  JMML  JMML. \`Mbmmd' M9mmmP'       ";
echo -e "\033[0m\n"

#                           seu script aqui
 #######################################################################     

# Pergunta se o processador é AMD ou Intel ?

echo "Seu processador é AMD ou Intel?"
sleep 1
echo "Digite 'amd' para AMD ou 'intel' para Intel."
read processador

# Verifica a resposta 

if [ "$processador" == "amd" ]; then
    echo "Instalando pacotes p/AMD ..."

Install_pacman() {
    package=$1
    for i in {1..3}; do
        if sudo pacman -S --noconfirm --needed "$package"; then
            echo "$package instalado com sucesso."
            break
        else
            echo "Erro ao instalar $package. Tentativa $i de 3..."
            pause
        fi
    done
}
package=(
    lib32-vulkan-radeon amd-ucode
    xf86-video-amdgpu xf86-video-ati vulkan-radeon
)
for pkg in "${packages[@]}"; do
    Install_pacman "$pkg"
done

echo

elif [ "$processador" == "intel" ]; then
    echo "Instalando pacotes p/Intel ..."
   
   Install_pacman() {
    package=$1
    for i in {1..3}; do
        if sudo pacman -S --noconfirm --needed "$package"; then
            echo "$package instalado com sucesso."
            break
        else
            echo "Erro ao instalar $package. Tentativa $i de 3..."
            pause
        fi
    done
}
package=(
        vulkan-intel intel-ucode libva-intel-driver
        xf86-video-intel lib32-vulkan-intel 
)
for pkg in "${packages[@]}"; do
    Install_pacman "$pkg"
done

echo


else
    echo "Processador inválido. Digite 'amd' ou 'intel'."
    exit 1
fi

# Continua com o resto do script abaixo


echo "Instalando pacotes necessarios do systema com pacman"
sleep 1

Install_pacman() {
    package=$1
    for i in {1..3}; do
        if sudo pacman -S --noconfirm --needed "$package"; then
            echo "$package instalado com sucesso."
            break
        else
            echo "Erro ao instalar $package. Tentativa $i de 3..."
            pause
        fi
    done
}
packages=(
    git wget unzip gum rofi wofi unrar okular waybar swww dolphin dolphin-plugins
    ark firefox loupe xdg-desktop-portal xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk xdg-desktop-portal-hyprland blueman bluedevil
    xdg-desktop-portal-wlr xdg-user-dirs xdg-user-dirs-gtk
    xdg-utils archlinux-xdg-menu btop ttf-font-awesome noto-fonts
    noto-fonts-emoji noto-fonts-extra ttf-firacode-nerd
    ttf-jetbrains-mono-nerd swayidle polkit-gnome bash-completion
    ntfs-3g ffmpegthumbnailer ffmpegthumbs volumeicon pavucontrol
    pamixer notification-daemon wl-clipboard wayland-utils
    clinfo alsa-utils  imagemagick adw-gtk-theme breeze breeze5
    breeze-gtk breeze-icons nwg-look bluez bluez-utils bluez-tools 
    kio kde-cli-tools sddm xorg network-manager-applet
    exfat-utils btrfs-progs xfsprogs jfsutils f2fs-tools
    nilfs-utils udftools e2fsprogs kitty gedit libva fastfetch
    mangohud telegram-desktop discord wine filelight pacman-contrib
    wine-gecko wine-mono winetricks curl vulkan-tools vulkan-icd-loader lib32-vulkan-icd-loader
    lib32-mesa lm_sensors mesa-demos xorg-xdpyinfo mesa-utils glfw
    mesa llvm lib32-llvm lvm2 zip timeshift lutris linux-lts-headers 
    linux-zen-headers steam gimp antimicrox celluloid mpv vlc 
    android-tools hyprutils hyprland-qtutils qt6-5compat
    qt6-declarative qt6-svg gnome-disk-utility gnome-calendar gnome-calculator
    ksnip swaync hyprland xorg-server xorg-xinit epapirus-icon-theme
    )
    
for pkg in "${packages[@]}"; do
    Install_pacman "$pkg"
done

echo
echo    
sleep 2

    #instalar o yay p/ter suporte ao aur.

echo
echo
echo "Instalando o suporte ao aur-helper com yay"
sleep 2
echo
echo
cd $HOME/
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si --noconfirm
    cd $HOME/
echo
echo
sleep 3
echo
echo
    #Instalar pacotes do aur com yay 
echo "Instalando pacotes necessarios do aur"
echo
sleep 3
echo
echo

install_yay() {
    package_yay=$1
    for i in {1..3}; do
        if yay -S --noconfirm --needed "$package_yay"; then
            echo "$package_yay instalado com sucesso."
            break
        else
            echo "Erro ao instalar $package_yay. Tentativa $i de 3..."
            pause
        fi
    done
}
    package_yay=(
    swayosd-git waypaper qt5ct-kde qt6ct-kde grimblast
    swaylock-effects reiserfsprogs wlogout protonup-qt-bin clipman
    clipse heroic-games-launcher-bin visual-studio-code-bin 
    )
    
       
for pkg in "${package_yay[@]}"; do
    install_yay "$pkg"
done    
      
echo
echo
echo
        # Obter o nome do usuário atual
        
    usuario=$(whoami)

echo "Adicionando usuário ao grupo 'wheel'"
sleep 2
        # Adiciona o usuário ao grupo 'wheel'
        
    sudo usermod -aG wheel "$usuario"
    sudo usermod -aG lp $USER

        #Só rodar no terminal
        
    xdg-user-dirs-update 

echo "Colocando o dolphin com padrão do sistema"
sleep 2
        #coloca o dolphin com padrão do sistema
        
    xdg-mime default org.kde.dolphin.desktop inode/directoryxdg-mime default org.kde.dolphin.desktop inode/directory 

echo "Habilitando o sddm, bluetooth no sitema"
sleep 2
        #Habilita o sddm

    systemctl enable sddm.service ; systemctl start user@970.service ; sudo systemctl start bluetooth.service ; sudo systemctl enable bluetooth.service
echo
sleep 2
echo
echo "Extraindo configurações nas suas devidas pastas"
echo
sleep 2

cd $HOME/pos_install_hyprland

if [ -f "$(pwd)/configs.tar.gz" ]; then
    tar -xzvf "$(pwd)/configs.tar.gz" -C "$HOME/"
    echo "Arquivo configs.tar.gz extraído para ~/configs com sucesso."
else
    echo "configs.tar.gz não encontrado no diretório atual."
fi  

echo
sleep 2
echo "Copiando p/.config"
cp -r $HOME/configs/* ~/.config  
rm -fr $HOME/configs

sleep 2

    #sudo tar -xzvf simple-sddm-2.tar.gz -C /usr/share/sddm/themes/
    
if [ -f "$(pwd)/simple-sddm-2.tar.gz" ]; then
    sudo tar -xzvf "$(pwd)/simple-sddm-2.tar.gz" -C "/usr/share/sddm/themes/"
    echo "Arquivo simple-sddm-2.tar.gz extraído para /usr/share/sddm/themes/ com sucesso."
else
    echo "simple-sddm-2.tar.gz não encontrado no diretório atual."
fi

sleep 2

    #sudo tar -xzvf sddm.conf.tar.gz -C /etc/

if [ -f "$(pwd)/sddm.conf.tar.gz" ]; then
    sudo tar -xzvf "$(pwd)/sddm.conf.tar.gz" -C "/etc/"
    echo "Arquivo sddm.conf.tar.gz extraído para /etc/ com sucesso."
else
    echo "sddm.conf.tar.gz não encontrado no diretório atual."
fi    
   
echo    
sleep 2
echo 
    
    
echo "Descompactação finalizada com sucesso"
echo

sleep 2
echo
cd $HOME/
echo
echo
sleep 1
echo "Removendo os arquivos baixados"
sleep 3

rm -fr pos_install_hyprland

echo "Vamos reiniciar a sua maquina e após isso estára pronta para uso"
echo "Obrigado"
echo
echo "Reiniciando" 
echo
echo
echo
echo "Pressione Enter para reiniciar, ou CTRL+C para cancelar."
read -p ""
echo
echo
sudo reboot

###################final do script #########################

else
    # Caso o usuário digite algo diferente
    echo "Resposta inválida! Por favor, digite 's' ou 'n'."
fi
 
else
  echo "Você não concordou. O script será encerrado."
  sleep 3
  exit 1
fi












 




