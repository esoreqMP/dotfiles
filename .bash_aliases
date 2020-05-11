alias lx='ll -XB' #  Sort by extension.
alias la='ll -A'
alias ls='ls -h --color'
alias ll="ls -lv --group-directories-first"
alias lm='ll | more'       #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias lx='ll -XB'          #  Sort by extension.
alias lk='ll -Sr  | sr'    #  Sort by size, biggest first.
alias lt='ll -tr  | sr'    #  Sort by date, most recent first.
alias mkdir='mkdir -p'
alias h='history'
alias hg='history|grep'
alias ..='cd ..'
alias du='du -kh'    
alias dt='du -sh * | sr'
alias # list all current aliases
alias rm='rm -i' # Will ask permission before deleting files.
alias cp='cp -i' # Will ask permission before overwriting files.
alias mv='mv -i' # Will ask permission before overwriting files.
alias cpv='rsync -ah --info=progress2' # a fancy copy
alias sr='sort -hr' # sort reverse.
