#glances, btop, cava, htop, neofetch, cmatrix  :)
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
alias ff="firefox &>/dev/null & disown"
alias b="flatpak run com.brave.Browser &>/dev/null & disown"
alias c='clear'
alias z="flatpak run app.zen_browser.zen &>/dev/null & disown"
alias bld="blender &>/dev/null & disown"
alias oi='flatpak run md.obsidian.Obsidian & disown'
alias nau='nautilus & disown'
alias vup="pamixer -i 5"
alias vdn="pamixer -d 5"
alias sa='steam %U &>/dev/null & disown'
alias w='waybar & disown'
alias kw='pkill -9 waybar'
alias k='pkill -9 -u nikesh'
#alias re='davinci-resolve & disown'
alias re='OCL_ICD_VENDORS=/etc/OpenCL/vendors/intel.icd davinci-resolve & disown'
alias v='viber & disown'

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
