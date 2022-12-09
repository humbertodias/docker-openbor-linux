function openbor-copy(){
    cp -r $HOME/OpenBOR/LINUX/OpenBOR $HOME/shared
    chmod +x $HOME/shared/OpenBOR/OpenBOR*
    echo "Check Out the folder shared/OpenBOR"
}

openbor-copy

function download-demo(){
    PAK_FILE=$HOME/shared/OpenBOR/Paks/RGA.pak
    if [ -f "$HOME/shared/OpenBOR/Paks/RGA.pak" ]; then
        echo "Pak $PAK_FILE already downloaded"
    else
        curl --http1.1 -Lk https://www.dropbox.com/s/04w0u2pw5rh7khf/RGA2.pak?dl=1 -o $HOME/shared/OpenBOR/Paks/RGA.pak
    fi
}

export -f openbor-copy download-demo

alias ll='ls -lha --color'


