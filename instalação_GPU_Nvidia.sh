#!/bin/bash

#!/bin/bash

##########################################################################
#    Autor = Rodrigo (Rbgames Linux)                                     #
#    Correçoes/ajustes = x86mota Felipe cruz https://github.com/x86mota  #
#    Tecnico em TI, tecnico em redes e finalizando tecnologo em Redes    #
#    E-mail = rbgameslinux@gmail.com                                     #
##########################################################################

# ==================== VARIÁVEIS ==================== #
Note='[\033[1;34mNOTA\033[0m]'
OK='[\033[1;32mOK\033[0m]'
Action='[\033[1;33mAÇÃO\033[0m]'
Error='[\033[1;31mERRO\033[0m]'
Clear='\033[1A\033[K'
AMD=(amd-ucode lib32-vulkan-radeon xf86-video-amdgpu xf86-video-ati vulkan-radeon)
INTEL=(intel-ucode vulkan-intel intel-ucode libva-intel-driver xf86-video-intel lib32-vulkan-intel)
NVIDIA=(libva libva-nvidia-driver mesa nvidia-dkms nvidia-settings nvidia-utils vulkan-headers vulkan-icd-loader vulkan-tools lib32-nvidia-utils lib32-vulkan-icd-loader)
pacotes=(
    base-devel git wget unzip gum rofi wofi unrar okular waybar swww dolphin dolphin-plugins
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
    ksnip swaync hyprland xorg-server xorg-xinit epapirus-icon-theme fastfetch
)
pacotes_yay=(
    swayosd-git waypaper  qt5ct-kde qt6ct-kde grimblast
    swaylock-effects reiserfsprogs wlogout protonup-qt-bin clipman
    clipse heroic-games-launcher-bin visual-studio-code-bin 
)


# ================================================== #
cd $HOME/pos_install_pessoal
sudo pacman -U --noconfirm --needed qqc2-desktop-style5-5.116.1-1-x86_64.pkg.tar.zst
# ==================== FUNÇÕES ==================== #

function _UserConfirm {
    local prompt="$1"
    read -rp "$prompt"

    case "${REPLY,,}" in
    s|sim)
        echo "Você concordou! Continuando..."
        sleep 3
        clear
        ;;
    n|não)
        echo "Você não concordou. O script será encerrado."
        sleep 3
        clear
        exit 1
        ;;
    *)
        _UserConfirm "${Action} - Digite [S]im ou [N]ão: "
esac
}

Install_pacman() {
    package=$1
    for i in {1..3}; do
        if sudo pacman -S --noconfirm --needed "$package"; then
            echo "${OK} - $package instalado com sucesso."
            break
        else
            echo "${Note} - Erro ao instalar $package. Tentativa $i de 3..."
            pause
        fi
    done
}

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

# ================================================== #

# Exibir "leia-me"
clear
echo -e "
===============================
     LEIA-ME ANTES DE USAR     
===============================
#########################################################
# Autor = Rodrigo (Rbgames Linux)                       #
# E-mail = rbgameslinux@gmail.com                       #
#########################################################
 
Este script foi feito para Archlinux com placas de video Nvidia.
Suporte p/Nvidia experimental
Este script fará alterações no seu sistema.
Irá adicionar suporte ao aur via yay e instalará pacotes do aur.
Ele instalará pacotes e irá adicionar o usuário ao grupo 'wheel'.
Lembrando que ele foi feito para instalações minimal do archlinux.
ATENCÃO SÓ GPU Nvidia !!!
Utilize por sua conta e risco
Tem certeza de que deseja prosseguir.
Se você não concorda, digite 'não' ou 'n'.
Se concorda, digite 'sim' ou 's' para continuar.
"

# confirmação do usuário
_UserConfirm "${Action} - Você concorda em continuar? (sim/não): "


echo -e "\033[1;34m"
echo "\`7MM\"\"\"Mq.  \`7MM\"\"\"Yp,       .g8\"\"\"bgd                                             ";
echo "  MM   \`MM.   MM     Yb    .dP'     \`M                                                      ";
echo "  MM   ,M9    MM     dP    dM'       \`   ,6\"Yb.  \`7MMpMMMb.pMMMb.   .gP\"Ya  ,pP\"Ybd      ";
echo "  MMmmdM9     MM\"\"\"bg.     MM           8)   MM    MM    MM    MM  ,M'   Yb 8I   \`\"      ";
echo "  MM  YM.     MM     \`Y    MM.    \`7MMF' ,pm9MM    MM    MM    MM  8M\"\"\"\"\"\" \`YMMMa.  ";
echo "  MM   \`Mb.   MM     ,9    \`Mb.     MM  8M   MM    MM    MM    MM  YM.    , L.   I8         ";
echo ".JMML. .JMM..JMMmmmd9        \`\"bmmmdPY  \`Moo9^Yo..JMML  JMML  JMML. \`Mbmmd' M9mmmP'       ";
echo -e "\033[0m\n"


# Detecta a fabricante do CPU e insere o pacote de microcode adequado à lista de pacotes
cpu=$(grep -m 1 'vendor_id' /proc/cpuinfo | awk '{print $NF}')
case ${cpu} in
  AuthenticAMD)
    pacotes+=("${AMD[@]}")
    ;;
  GenuineIntel)
    pacotes+=("${INTEL[@]}")
    ;;
  *) exit 0 ;;
esac

# Retorna quais kernels estão instalados e insere os headers à lista de pacotes
if [[ -d "usr/lib/modules" ]]; then
    for kernel in $(cat /usr/lib/modules/*/pkgbase); do
        pacotes+=("${kernel}-headers")
    done
else
    kernel=$(uname -s | tr '[:upper:]' '[:lower:]')
    pacotes+=("${kernel}-headers")
fi

# Habilita o repositório multilib
PacmanPath="/etc/pacman.conf"
MultilibMsg="Habilitando repositório multilib"
grep -q '^#\[multilib\]' "${PacmanPath}" && {
  echo -e "${Note} - ${MultilibMsg}"
  sudo sed -i '/^#\[multilib\]/{s/^#//;n;s/^#//;}' "${PacmanPath}" && {
    echo -e "${Clear}${OK} - ${MultilibMsg}"
  } || echo -e "${Clear}${Error} - ${MultilibMsg}"
}

# Atualiza o Sistema 
echo -e "${Note} - Atualizando o sistema"
if sudo pacman -Syu --noconfirm --needed &>/dev/null; then
    echo -e "${Clear}${OK} - Sistema atualizado"
else 
    echo -e "${Clear}${Error} - A atualização do sistema falhou." 
    exit 1
fi

# Adiona os pacotes da NVIDIA à lista de pacotes 
pacotes+=("${NVIDIA[@]}")

# Instala os pacotes
echo -e "\n\n${Note} - Instalando pacotes necessarios do systema com pacman\n"
sleep 2
for pkg in "${pacotes[@]}"; do
    Install_pacman "$pkg"
done

echo -e "\n\n${Note} - Fazendo configuração necessaria para Nvidia\n"
sleep 2

# Configuração para o GRUB
if pacman -Q | grep grub &>/dev/null && [ -f "/boot/grub/grub.cfg" ]; then
    GrubConfigFile="/etc/default/grub"
    NvidiaModule="nvidia_drm.modeset=1"
    ! grep -q "${NvidiaModule}" "${GrubConfigFile}" && {
        sudo sed -i "s/\(GRUB_CMDLINE_LINUX_DEFAULT=\"[^\"]*\)/\1 ${NvidiaModule}/" "${GrubConfigFile}"
    }

    sudo grub-mkconfig -o /boot/grub/grub.cfg
fi

# DRM kernel
Modules=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)
for Module in "${Modules[@]}"; do
    if ! grep -wq "^MODULES=.*${Module}" /etc/mkinitcpio.conf; then
        sudo sed -i "s/^MODULES=(\(.*\))/MODULES=(\1${Module} )/" /etc/mkinitcpio.conf
    fi
done

sudo bash -c "echo 'options nvidia_drm modeset=1 fbdev=1' >> /etc/modprobe.d/nvidia.conf"

sudo mkinitcpio -P &>/dev/null

# Instalar o yay para ter suporte ao aur.
echo -e "\n\n${Note} - Instalando o suporte ao aur-helper com YAY\n"
sleep 2
git clone https://aur.archlinux.org/yay-bin.git /tmp/aur
makepkg -si --noconfirm --dir /tmp/aur

# Instala pacotes do AUR
echo -e "\n\n${Note} - Instalando pacotes necessarios do AUR\n"
sleep 2
for pkg in "${pacotes_yay[@]}"; do
    install_yay "$pkg"
done

# Colocando o dolphin com padrão do sistema
xdg-mime default org.kde.dolphin.desktop inode/directoryxdg-mime default org.kde.dolphin.desktop inode/directory

# Habilitando serviços
echo -e "\n\n${Note} - Habilitando sddm e bluetooth"
sleep 2
systemctl enable sddm.service ; systemctl start user@970.service ; sudo systemctl start bluetooth.service ; sudo systemctl enable bluetooth.service

# Extraindo configurações
echo -e "\n\n${Note} - Extraindo configurações nas suas devidas pastas\n"
cd "${HOME}/pos_install_hyprland" || exit
if [ -f "$(pwd)/configs_Nvidia.tar.gz" ]; then
    tar -xzvf "$(pwd)/configs_Nvidia.tar.gz" -C "$HOME/"
    echo "${OK} - Arquivo configs_Nvidia.tar.gz extraído para ~/configs_Nvidia com sucesso."
else
    echo "${Error} - configs_Nvidia.tar.gz não encontrado no diretório atual."
fi

echo "${Note} - Copiando para ${HOME}/.config"
cp -r "$HOME/configs_Nvidia/"* "${HOME}/.config/"  
rm -rf "$HOME/configs_Nvidia"

sleep 2
    
if [ -f "$(pwd)/simple-sddm-2.tar.gz" ]; then
    sudo tar -xzvf "$(pwd)/simple-sddm-2.tar.gz" -C "/usr/share/sddm/themes/"
    echo "${OK} - Arquivo simple-sddm-2.tar.gz extraído para /usr/share/sddm/themes/ com sucesso."
else
    echo "${Error} - simple-sddm-2.tar.gz não encontrado no diretório atual."
fi

sleep 2

if [ -f "$(pwd)/sddm.conf.tar.gz" ]; then
    sudo tar -xzvf "$(pwd)/sddm.conf.tar.gz" -C "/etc/"
    echo "${OK} - Arquivo sddm.conf.tar.gz extraído para /etc/ com sucesso."
else
    echo "${Error} - sddm.conf.tar.gz não encontrado no diretório atual."
fi    
   
sleep 2

echo -e "${OK}\nDescompactação finalizada com sucesso\n"

echo -e "\n${Note} - Removendo os arquivos baixados"
cd "${HOME}" || exit
rm -fr pos_install_hyprland

#  Instalação completa
echo -e "${OK} - Instalação Completa\n"
echo -en "${Action} - Você gostaria de reiniciar o computador agora? (s/n): "
read -rp
if [[ "$REPLY" =~ [Ss]$ ]]; then
    systemctl reboot
fi
