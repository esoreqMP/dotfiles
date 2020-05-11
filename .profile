case "$SHELL" in
/bin/bash)
    . /etc/bashrc
    . .bashrc
    ;;
/usr/bin/bash)
    . /etc/bashrc
    . .bashrc
    ;;
/usr/local/bin/bash)
    . /etc/bashrc
    . .bashrc
    ;;
*)  ;;
esac
