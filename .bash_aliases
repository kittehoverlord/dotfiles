##utilites

alias la='ls -a --color=auto'
alias lah='ls -lah --color=auto'
alias lh='ls -lh --color=auto'
alias setinx='xset s off s noblank s noexpose -dpms'
alias surch='apt-cache search'
alias show='apt-cache show'
alias showall='apt-cache showpkg'
alias install='apt-get install'
alias update='apt-get update'
alias upgrade='apt-get upgrade'
alias ubergrade='apt-get dist-upgrade'
alias bldapkg='apt-get build-dep'
alias clean='apt-get autoclean'
alias check='apt-get check'
alias remove='apt-get autoremove'
alias purge='apt-get purge'
alias aptclean='clean; remove; check'

##sigh
alias freakhi=' cpufreq-set -g performance -c 0;  cpufreq-set -g performance -c 1;  cpufreq-set -g performance -c 2;  cpufreq-set -g performance -c 3;  cpufreq-set -g performance -c 4;  cpufreq-set -g performance -c 5;  cpufreq-set -g performance -c 6;  cpufreq-set -g performance -c 7'
alias freaklo=' cpufreq-set -g ondemand -c 0;  cpufreq-set -g ondemand -c 1;  cpufreq-set -g ondemand -c 2;  cpufreq-set -g ondemand -c 3;  cpufreq-set -g ondemand -c 4;  cpufreq-set -g ondemand -c 5;  cpufreq-set -g ondemand -c 6;  cpufreq-set -g ondemand -c 7'
alias strtup='setinx ; xscreensaver -nosplash &'

##mockery
alias gayscrotum="scrot -u poop.png && convert poop.png -set filename:magic '%wx%h_%b-%k_%i' \( +clone -background black -shadow 80x20+0+15 \) +swap -background none -layers merge +repage '%[filename:magic]' ; pngnq *_poop.png && rm *poop.png"

alias gayscrotums="scrot -s poop.png && convert poop.png -set filename:magic '%wx%h_%b-%k_%i' \( +clone -background black -shadow 80x20+0+15 \) +swap -background none -layers merge +repage '%[filename:magic]' ; pngnq *_poop.png && rm *poop.png"

alias gayscrot="scrot poop.png && convert poop.png -set filename:magic '%wx%h_%b-%k_%i' \( +clone -background black -shadow 80x20+0+15 \) +swap -background none -layers merge +repage '%[filename:magic]' ; pngnq *_poop.png && rm *poop.png"

alias shader="convert poop.png -set filename:magic '%wx%h_%b-%k_%i' \( +clone -background black -shadow 80x20+0+15 \) +swap -background none -layers merge +repage '%[filename:magic]' ; pngnq *_poop.png && rm *poop.png"

alias gayscrotu="sleep 2; scrot -u poop.png && convert poop.png -set filename:magic '%wx%h_%b-%k_%i' \( +clone -background black -shadow 80x20+0+15 \) +swap -background none -layers merge +repage '%[filename:magic]' ; pngnq *_poop.png && rm *poop.png"

alias poopup="notify-send  -i /home/ron/Pics/cats/medium.jpg -u critical $1 $2"

alias scrotum="scrot -u 'poop.png' && pngnq poop.png && rm poop.png"

alias scrotums="scrot 'poop.png' && pngnq poop.png && rm poop.png"

##dual screen

alias tvmain='xrandr --output HDMI-1 --mode 1360x768 --rate 60 --right-of VGA-0'

alias onemon='xrandr --output VGA-1 --off'

alias lapoff='xrandr --output LVDS-1 --off'

##record

alias scrgrb='ffmpeg -f x11grab -s 1360x768 -r 29 -i :0.0 -vcodec libx264 -threads 8 -preset ultrafast -crf 0 poop.mkv'

##alias scrgrb='ffmpeg -f x11grab -s 1360x768 -r 29 -i :0.0 -vcodec libx264 -threads 8 `date "+%Y-%H-%M.mkv"`'

alias scr1grb='ffmpeg -f x11grab -s 1360x768 -i :0.0 -vcodec libx264 -preset ultrafast -crf 0 -threads 4 poop1.mkv'

alias scr2grb='ffmpeg -f x11grab -s 1360x768 -i :0.0+1360+0 -vcodec libx264 -preset ultrafast -crf 0 -threads 4 poop2.mkv'

alias mergemovies='ffmpeg -i poop1.mkv -i poop2.mkv -filter_complex "[0:v:0]pad=iw*2:ih[bg]; [bg][1:v:0]overlay=w" poop.mkv'

alias maekmovi='ffmpeg -i poop.mkv -threads 8 -pass 1 -codec:v libvpx -b:v 500K -maxrate 500k -bufsize 1M -vf scale=-1:480 poop.webm;real_ffmpeg -i poop.mkv -threads 8 -pass 2 -codec:v libvpx -b:v 500K -maxrate 500k -bufsize 1M -vf scale=-1:480 poop.webm'
