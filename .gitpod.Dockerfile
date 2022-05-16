FROM gitpod/workspace-base

USER gitpod

RUN sudo apt-get -q update && \
    sudo apt install -yq librust-gdk+v3-16-dev