set fish_greeting ""
#glances, btop, cava, htop, fastfetch, cmatrix, pipes.sh, :)
#
#Gammastep
alias g27k='gammastep -O 2700 & disown'
alias g3k='gammastep -O 3000 & disown'
alias g35k='gammastep -O 3500 & disown'
alias g4k='gammastep -O 4000 & disown'
alias g45k='gammastep -O 4500 & disown'
alias g5k='gammastep -O 5000 & disown'
alias pgs='pkill gammastep'
alias ck='tty-clock -c -s -C 7 -t'

#Shortcuts
alias c='clear'
alias nau='nautilus & disown'
alias w='waybar & disown'
alias kw='pkill -9 waybar'
alias k='pkill -9 -u nikesh'
alias re='OCL_ICD_VENDORS=/etc/OpenCL/vendors/intel.icd davinci-resolve & disown'
alias bo='flatpak run com.usebottles.bottles & disown'



function enc
    for f in $argv[1]/*.mp4
        set out $argv[2]/(basename $f .mp4).mov
        if test -f $out
            echo "Skipping $f, already exists"
        else
            ffmpeg -i $f -c:v dnxhd -profile:v dnxhr_lb -c:a pcm_s16le $out
        end
    end
end


function dec
    ffmpeg -i $argv[1] -c:v libx264 -crf 22 -c:a aac -movflags +faststart (test (count $argv) -ge 2; and echo $argv[2]; or echo (string replace -r '\.[^.]+$' '' $argv[1])".mp4")
end

#Run Gems directly
set -gx PATH $HOME/.local/bin $PATH

#Convert mp3
function m3
    ffmpeg -i $argv[1] -c:a pcm_s24le (string replace -r '\.[^.]+$' '.wav' $argv[1])
end
    
alias gnu='GTK_THEME=Adwaita gnusim8085 & disown'
