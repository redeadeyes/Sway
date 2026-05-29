
set fish_greeting ""

#glances, btop, cava, htop, fastfetch, cmatrix, pipes.sh, :)
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
#
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
            ffmpeg -i $f -c:v dnxhd -profile:v dnxhr_hq -c:a pcm_s16le $out
        end
    end
end

function enc
    for f in $argv[1]/*.mp4
        set out $argv[2]/(basename $f .mp4).mov
        if test -f $out
            echo "Skipping $f, already exists"
        else
            # Changed profile to dnxhr_lb (Low Bandwidth) for massive space savings
            ffmpeg -i $f -c:v dnxhd -profile:v dnxhr_lb -c:a pcm_s16le $out
        end
    end
end
