export TEXT_EDITOR=nano

export PS1="\D{%I:%M %p}:\W $ "

# Use colors.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Make nano default editor
export EDITOR=nano

# Flush DNS cache (See: http://support.apple.com/kb/ht5343).
alias flush-dns='echo $(cat ~/.macosa/.vaultpass) | sudo -S killall -HUP mDNSResponder'
# shortcut for getting octal permissions on a file or directory
get-octal-permissions() {
  stat -f %Mp%Lp $1
}
alias get-mode='get-octal-permissions'

# Enable bash completion for aws cli
complete -C aws_completer aws
