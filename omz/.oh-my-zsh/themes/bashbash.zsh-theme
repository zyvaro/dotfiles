# bash-simple.zsh-theme
# A clean, Bash-like prompt for Zsh with Git and error status

# Set colors for prompt elements
PROMPT_COLOR_USER="white"
PROMPT_COLOR_HOST="white"
PROMPT_COLOR_DIR="green"
PROMPT_COLOR_ERROR="red"
PROMPT_COLOR_GIT_BRANCH="blue"
PROMPT_COLOR_GIT_DIRTY="yellow"

# Main prompt (left side)
PROMPT='[%F{${PROMPT_COLOR_USER}}%n%f@%F{${PROMPT_COLOR_HOST}}%m%f %F{${PROMPT_COLOR_DIR}}%~%f]%(?.. %F{${PROMPT_COLOR_ERROR}}[%?]%f)$ '

# Git prompt configuration (right side)
ZSH_THEME_GIT_PROMPT_PREFIX="%F{${PROMPT_COLOR_GIT_BRANCH}}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{${PROMPT_COLOR_GIT_BRANCH}}) "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{${PROMPT_COLOR_GIT_DIRTY}}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Function to get Git status (compatible with most Zsh Git plugins)
function git_prompt_info() {
  local ref
  ref=$(command git symbolic-ref --short HEAD 2> /dev/null) || \
  ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
  
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Check for Git repository dirty status
function parse_git_dirty() {
  local STATUS
  STATUS=$(command git status --porcelain 2> /dev/null | tail -n1)
  if [[ -n $STATUS ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi
}

# Set right prompt with Git info
RPROMPT='$(git_prompt_info)'
