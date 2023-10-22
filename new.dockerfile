FROM archlinux:latest 
RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm reflector
# RUN reflector init
RUN reflector --save /etc/pacman.d/mirrorlist --protocol https --country 'Poland'
RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm git curl base-devel ansible
ADD local.yaml /
ADD tasks /tasks
RUN ansible-playbook local.yaml -t fast