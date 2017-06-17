#
blacklist /usr/local/bin
blacklist /usr/local/sbin
#
whitelist ${HOME}/.mozilla
whitelist ${HOME}/Downloads/
whitelist ${HOME}/.pulse/
whitelist ${HOME}/.config/pulse/
whitelist ${HOME}/.config/gtk-3.0/
whitelist ${HOME}/.config/google-googletalkplugin/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.Xauthority
whitelist ${HOME}/PDF/

#
#
#private-bin firefox.real,firefox,which,sh
#private-etc hosts,passwd,mime.types,fonts/,mailcap,iceweasel/,xdg/,gtk-3.0/,resolv.conf,X11/,pulse/,adobe/,gcrypt/,alternatives/
private-tmp
#
Miscellaneous options
#
shell none
seccomp
noroot
caps.drop all
protocol unix
#
noblacklist ~/.emacs
noblacklist ~/.emacs.d

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc


caps.drop all
netfilter
nonewprivs
noroot
nogroups
protocol unix,inet,inet6
seccomp
