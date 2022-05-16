FROM gitpod/workspace-full-vnc

USER gitpod

## Install Build Deps
RUN sudo apt-get -q update && \
    sudo apt install -yq librust-gdk+v3-16-dev

## Install Minecraft Launcher
RUN mkdir /tmp/minecraft &&\
    cd /tmp/minecraft &&\
    wget https://launcher.mojang.com/download/Minecraft.deb &&\
    sudo apt install -yq ./Minecraft.deb