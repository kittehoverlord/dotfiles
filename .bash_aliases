##utilites
alias la='ls -a --color=auto'
alias lah='ls -lah --color=auto'
alias lh='ls -lh --color=auto'
alias surch='apt-cache search'
alias show='apt-cache show'
alias showall='sudo apt-cache show-pkg'
alias install='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias ubergrade='sudo apt-get dist-upgrade'
alias bldapkg='sudo apt-get build-dep'
alias clean='sudo apt-get autoclean'
alias check='sudo apt-get check'
alias remove='sudo apt-get autoremove'
alias purge='sudo apt-get purge'
alias aptclean='clean; remove; check'
alias setinx='xset s off s noblank s noexpose -dpms'
alias bgset='feh Pictures/woven2.png --bg-tile'
alias bgsetmeow='feh Pictures/poop.jpg --bg-tile'
##alias moniclr='xcalib '

##sigh
alias freakhi='sudo cpufreq-set -g performance -c 0; sudo cpufreq-set -g performance -c 1; sudo cpufreq-set -g performance -c 2; sudo cpufreq-set -g performance -c 3; sudo cpufreq-set -g performance -c 4; sudo cpufreq-set -g performance -c 5; sudo cpufreq-set -g performance -c 6; sudo cpufreq-set -g performance -c 7'
alias freaklo='sudo cpufreq-set -g ondemand -c 0; sudo cpufreq-set -g ondemand -c 1; sudo cpufreq-set -g ondemand -c 2; sudo cpufreq-set -g ondemand -c 3; sudo cpufreq-set -g ondemand -c 4; sudo cpufreq-set -g ondemand -c 5; sudo cpufreq-set -g ondemand -c 6; sudo cpufreq-set -g ondemand -c 7'

##begin again
alias strtup='onemon ; bklton ; setinx ; bgset ; xscreensaver -nosplash &'
alias strtup1='leftmain ; bklton ; setinx ; bgset ; xscreensaver -nosplash &'
alias strtup2='ritemain ; bklton ; setinx ; bgset ; xscreensaver -nosplash &'
alias restrtup='onemon ; setinx ; bgset ; xscreensaver -nosplash &'
alias restrtup1='leftmain ; setinx ; bgset ; xscreensaver -nosplash &'
alias restrtup2='ritemain ; setinx ; bgset ; xscreensaver -nosplash &'

##mockery
alias gayscrotum="scrot -u poop.png && convert poop.png -set filename:magic '%wx%h_%b-%k_%i' \( +clone -background black -shadow 50x50x50x50+10+10+10+10 \) +swap -background none -layers merge +repage '%[filename:magic]' ; pngnq *_poop.png && rm *poop.png"
alias gayscrotums="scrot -s poop.png && convert poop.png -set filename:magic '%wx%h_%b-%k_%i' \( +clone -background black -shadow 50x50x50x50+10+10+10+10 \) +swap -background none -layers merge +repage '%[filename:magic]' ; pngnq *_poop.png && rm *poop.png"
alias gayscrot="scrot poop.png && convert poop.png -set filename:magic '%wx%h_%b-%k_%i' \( +clone -background black -shadow 50x50x50x50+10+10+10+10 \) +swap -background none -layers merge +repage '%[filename:magic]' ; pngnq *_poop.png && rm *poop.png"
alias shader="convert poop.png -set filename:magic '%wx%h_%b-%k_%i' \( +clone -background black -shadow 50x50x50x50+10+10+10+10 \) +swap -background none -layers merge +repage '%[filename:magic]' ; pngnq *_poop.png && rm *poop.png"
alias gayscrotu="sleep 2; scrot -u poop.png && convert poop.png -set filename:magic '%wx%h_%b-%k_%i' \( +clone -background black -shadow 50x50x50x50+10+10+10+10 \) +swap -background none -layers merge +repage '%[filename:magic]' ; pngnq *_poop.png && rm *poop.png"

##toys
alias popup="notify-send  -i /home/poop/Pictures/cats/medium.jpg -u critical $1 $2"
alias bklton='sh /home/poop/g73/light_up.sh'
alias bkltoff='sh /home/poop/g73/light_down.sh'
alias scrotum="scrot -u 'poop.png' && pngnq poop.png && rm poop.png"
alias scrotums="scrot 'poop.png' && pngnq poop.png && rm poop.png"
alias tittyclock='tty-clock -c -s -C 5'
alias fetch='screenfetch-dev'
##dual screen
alias leftmain='xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --right-of LVDS-0'
alias ritemain='xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --left-of LVDS-0'
alias onemon='xrandr --output HDMI-0 --off'

##record
alias byz='byzanz-record -d 15 poopinpants.gif'
alias scrgrb='real_ffmpeg -f x11grab -s 1920x1080 -r 29 -i :0.0 -vcodec libx264 -threads 8 -preset ultrafast -crf 0 poop.mkv'
##alias scrgrb='real_ffmpeg -f x11grab -s 1920x1080 -r 29 -i :0.0 -vcodec libx264 -threads 8 `date "+%Y-%H-%M.mkv"`'
alias scr1grb='real_ffmpeg -f x11grab -s 1920x1080 -i :0.0 -vcodec libx264 -preset ultrafast -crf 0 -threads 4 poop1.mkv'
alias scr2grb='real_ffmpeg -f x11grab -s 1920x1080 -i :0.0+1920+0 -vcodec libx264 -preset ultrafast -crf 0 -threads 4 poop2.mkv'
alias mergemovies='real_ffmpeg -i poop1.mkv -i poop2.mkv -filter_complex "[0:v:0]pad=iw*2:ih[bg]; [bg][1:v:0]overlay=w" poop.mkv'
alias maekmovi='real_ffmpeg -i poop.mkv -threads 8 -pass 1 -codec:v libvpx -b:v 500K -maxrate 500k -bufsize 1M -vf scale=-1:480 poop.webm;real_ffmpeg -i poop.mkv -threads 8 -pass 2 -codec:v libvpx -b:v 500K -maxrate 500k -bufsize 1M -vf scale=-1:480 poop.webm'

##build
##  alias bldffmpeg="./configure --enable-libtheora --enable-libvorbis --enable-libmp3lame --enable-libpulse --enable-libopus --enable-libx264 --enable-libopenjpeg --enable-x11grab --enable-libvo-aacenc --enable-libtwolame --enable-pthreads --enable-vaapi --enable-shared --enable-gpl --enable-version3 --disable-network --disable-ffserver"

##  PATH="$HOME/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" ./configure  --prefix="$HOME/ffmpeg_build" --extra-cflags="-I$HOME/ffmpeg_build/include" --extra-ldflags="-L$HOME/ffmpeg_build/lib" --bindir="$HOME/bin" --enable-libtheora --enable-libvorbis --enable-libmp3lame --enable-libpulse --enable-libopus --enable-libx264 --enable-libopenjpeg --enable-x11grab --enable-libvo-aacenc --enable-libtwolame --enable-pthreads --enable-vaapi --enable-shared --enable-gpl --enable-version3 --disable-network --disable-ffserver
