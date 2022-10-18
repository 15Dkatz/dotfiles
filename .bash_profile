source ~/.source_secrets.sh

alias g='git'

export PATH="$HOME/.yarn/bin:/usr/local/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dk/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dk/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dk/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dk/google-cloud-sdk/completion.bash.inc'; fi

# source /usr/local/bin/git-completion.bash

eval "$(pyenv init --path)"

. /usr/local/bin/z.sh
