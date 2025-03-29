# prezto

[prezto](https://github.com/sorin-ionescu/prezto)

## change
~/.zpretorc
```
# --- theme
# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
zstyle ':prezto:module:prompt' theme 'steeef'

# --- modules
# Set the Prezto modules to load (browse modules).
# The order matters.
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'history-substring-search' \
  'prompt' \
  'git' \
  'autosuggestions' \
  'syntax-highlighting'
```