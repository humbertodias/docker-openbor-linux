function openbor-copy(){
    cp -r $HOME/OpenBOR/LINUX_AMD64/OpenBOR /shared
    chmod +x /shared/OpenBOR/OpenBOR
    echo "Check Out the folder shared/OpenBOR"
}

openbor-copy

function download-demo(){
    PAK_FILE=/shared/OpenBOR/Paks/RGA.pak
    if [ -f "/shared/OpenBOR/Paks/RGA.pak" ]; then
        echo "Pak $PAK_FILE already downloaded"
    else
        mkdir -p /shared/OpenBOR/Paks
        curl --http1.1 -Lk https://www.dropbox.com/s/04w0u2pw5rh7khf/RGA2.pak?dl=1 -o /shared/OpenBOR/Paks/RGA.pak
    fi
}

export -f openbor-copy download-demo

alias ll='ls -lha --color'


