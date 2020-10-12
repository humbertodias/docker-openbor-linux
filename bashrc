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
        curl -LOk http://www.zvitor.com.br/Downloads/RGAv103.rar
        unrar e RGAv103.rar i "*RGA.pak"
        mv RGA.pak /shared/OpenBOR/Paks
        rm RGAv103.rar
    fi
}

export -f openbor-copy download-demo

alias ll='ls -lha --color'


