function openbor-copy(){
    cp -r $HOME/OpenBOR/LINUX_AMD64/OpenBOR /shared
    chmod +x /shared/OpenBOR/OpenBOR
    echo "Check Out the folder shared/OpenBOR"
}

openbor-copy

function download-demo(){
    curl -LOk http://www.zvitor.com.br/Downloads/RGAv103.rar
    unrar e RGAv103.rar i "*RGA.pak"
    mv RGA.pak /shared/OpenBOR/Paks
    rm RGAv103.rar
    cd /shared/OpenBOR
}

export -f openbor-copy openbor-demo

alias ll='ls -lha --color'


