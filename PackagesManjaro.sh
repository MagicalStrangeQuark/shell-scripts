## COMPOSER
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy composer

## DEVILSPIE
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -S devilspie || sudo pacman -Rs devilspie
mkdir -p ~/.devilspie

echo '
(if (contains (window_class) "Code")
	(begin
		(spawn_async (str "xprop -id " (window_xid) " -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 "))
		(spawn_async (str "xprop -id " (window_xid) " -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0xD8000000"))
	)
)
' > ~/.devilspie/vscode_transparent.ds

## GEOIP CONFIGURATION
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman-mirrors -g --geoip

## LOLCAT
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy lolcat

## YAY
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Su yay

## VISUAL STUDIO CODE
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
yay -S visual-studio-code-bin

## GIT
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy git
git config --global user.name "Wesley Flôres"
git config --global user.email wesleyfloresterres@gmail.com

## HTOP
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy htop

## MYSQL

## NODE
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
snap install --edge node
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
snap install --edge node --classic

## P7ZIP
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy p7zip

## PHP
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy php

## POSTGRES
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy postgresql postgis
sudo mkdir -m 0700 -p '/var/lib/postgres/data'
sudo chown postgres '/var/lib/postgres/data'
sudo -i -u postgres
initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data/'
exit
systemctl enable postgresql.service
systemctl start postgresql.service
systemctl status postgresql.service

## PGADMIN4
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy pgadmin4
sudo -i -u postgres
psql
ALTER USER postgres WITH PASSWORD 'postgres';

## QBITTORRENT
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy qbittorrent

## TMUX
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy tmux

## UNRAR
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy unrar

## YOUTUBE-DL
sudo pacman -Sy && sudo pacman -Su && sudo pacman -Syu
sudo pacman -Sy youtube-dl
