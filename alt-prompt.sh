#!/bin/bash

c="[\033["
p="${c}0;37m]"
PS1="\n${p}╔ǁ ${c}1;3\$(if [ \$? -eq 0 ]; then echo '2'; else echo '1'; fi)m]*$p ǁ ${c}36m]\@ \d$p ǁ ${c}35m]\j$p ǁ ${c}30m]\u${c}33m]@\h$p ǁ ${c}1;34m]\w$p ǁ ${c}32m]\$(/bin/ls -1 | /usr/bin/wc -l) files, \$(/bin/ls -lah | /usr/bin/grep -m 1 total | /bin/sed 's/total //')${c}m]$p ǁ═╗\n╚═${c}1;3\$(if [ ${EUID} -eq 0 ]; then echo '1'; else echo '4'; fi)m]»${c}m] "
