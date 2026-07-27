# Linux
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
elif [ -f $TERMUX__PREFIX/share/bash-completion/bash_completion ]; then
  . $TERMUX__PREFIX/share/bash-completion/bash_completion
# MacOS
elif [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi
