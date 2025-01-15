autoload -Uz compinit && compinit
autoload -Uz add-zsh-hook
autoload -Uz vcs_info

add-zsh-hook precmd vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats " %F{green}%c%u(%b)%f"
zstyle ':vcs_info:*' actionformats " %F{green}%c%u(%b)%f %a"
zstyle ':vcs_info:*' stagedstr "%F{red}"
zstyle ':vcs_info:*' unstagedstr "%F{red}"
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

+vi-git-untracked() {
  if git --no-optional-locks status --porcelain 2> /dev/null | grep -q "^??"; then
    hook_com[staged]+="%F{red}"
  fi
}

setopt PROMPT_SUBST
export PROMPT='%n:%1~$vcs_info_msg_0_ # '

. /usr/local/bin/z.sh
# create ~/.vimrc
# vim will find ~/.vimrc automatically

# Created by `pipx` on 2025-01-14 22:33:32
export PATH="$PATH:/Users/david.katz/.local/bin"

# # The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/dk/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dk/google-cloud-sdk/path.zsh.inc'; fi
#
# # The next line enables shell command completion for gcloud.
# if [ -f '/Users/dk/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dk/google-cloud-sdk/completion.zsh.inc'; fi
