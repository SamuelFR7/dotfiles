# My dotfiles
![Screenshot](https://github.com/SamuelFR7/dotfiles/raw/main/.github/newScreen.jpg)
## Details:
- Operating System - Arch Linux x86_64
- Window Manager - i3
- Compositor - Picom
- Status Bar - Polybar
- Terminal - Kitty
- Shell - Zsh + Starship
- Application Launcher: Rofi
- Code Editor - LunarVim & Visual Studio Code
## Installation

### Yay
```bash
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### Required packages
```bash
yay -S i3 picom cava dunst spotify polybar starship kitty               \
rofi pyhton3 feh brightnessctl papirus-icon-theme otf-sora              \
ttf-nerd-fonts-symbols-common otf-firamono-nerd inter-font              \
ttf-fantasque-nerd noto-fonts noto-fonts-emoji ttf-comfortaa            \
ttf-jetbrains-mono-nerd ttf-icomoon-feather ttf-iosevka-nerd            \
adobe-source-code-pro-fonts ttf-cascadia-code visual-studio-code-bin    \
ttf-cascadia-code-nerd ffmpeg neovim fzf
```

## Important
Don't forget to make the bash files from the folder scripts, executable by using
```bash
chmod +x filename.sh
```
