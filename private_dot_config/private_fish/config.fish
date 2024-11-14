if status is-interactive
    # Commands to run in interactive sessions can go here
end

export PATH="$HOME/.volta/bin:$PATH"

export NODE_OPTIONS="--max-old-space-size=81926"

alias ls="eza --icons=always"
alias c='clear'
alias pn=pnpm
alias zed="WAYLAND_DISPLAY='' command zed "
alias cat="bat"



eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
zoxide init fish --cmd cd | source
starship init fish | source

# pnpm
set -gx PNPM_HOME "/home/azriel/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
