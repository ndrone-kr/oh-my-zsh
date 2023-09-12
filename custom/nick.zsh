ZSH_THEME="af-magic2"

export GPG_TTY=$(tty)
export ZSH_ALIAS_FINDER_AUTOMATIC=true
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/highlighters
export NVM_HOMEBREW=$(brew --prefix nvm)

# enable once https://github.com/robbyrussell/oh-my-zsh/pull/8062 is merged
#plugins=(alias-finder autojump brew extract git gitignore java mac mvn zsh-autosuggestions zsh-syntax-highlighting)

# remove these once the above is enabled.
source ${ZSH}/plugins/ansible/ansible.plugin.zsh
source ${ZSH}/plugins/autojump/autojump.plugin.zsh
source ${ZSH}/plugins/brew/brew.plugin.zsh
source ${ZSH}/plugins/extract/extract.plugin.zsh
source ${ZSH}/plugins/gh/gh.plugin.zsh
source ${ZSH}/plugins/gitignore/gitignore.plugin.zsh
source ${ZSH}/plugins/nvm/nvm.plugin.zsh
source ${ZSH}/plugins/terraform/terraform.plugin.zsh
source ${ZSH}/custom/plugins/alias-finder/alias-finder.plugin.zsh
if [[ "$OSTYPE" = darwin* ]]; then
  source ${ZSH}/custom/plugins/mac/mac.plugin.zsh
fi
source ${ZSH}/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ${ZSH}/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

alias af="alias-finder -e $1 && alias-finder -l $1"
