
function fzf-history-search() {
  BUFFER=$(history -n -r 1 | fzf --no-sort +m --query "$LBUFFER" --prompt="History > ")
  CURSOR=$#BUFFER
}
zle -N fzf-history-search
bindkey '^r' fzf-history-search

# zplugなどでzをインストールしとく
# zplug "rupa/z", use:z.sh

fzf-z-search() {
    local res=$(z | sort -rn | cut -c 12- | fzf)
    if [ -n "$res" ]; then
        BUFFER+="cd $res"
        zle accept-line
    else
        return 1
    fi
}

zle -N fzf-z-search
bindkey '^f' fzf-z-search


function frm() {
    local selected
    selected=$(unbuffer lsd -l | fzf -m --ansi | awk '{print $12}')
    if [[ -n "$selected" ]]; then
        selected=$(tr '\n' ' ' <<< "$selected")
        rm $selected
    fi
}

function fzf-git-add() {
    local selected
    selected=$(unbuffer git status -s | fzf -m --ansi --preview="echo {} | awk '{print \$2}' | xargs git diff --color" | awk '{print $2}')
    if [[ -n "$selected" ]]; then
        git add `paste -s - <<< $selected`
        echo "Completed: git add $selected"
    fi
}

function fzf-git-reset() {
    local selected
    selected=$(unbuffer git status -s | fzf -m --ansi --preview="echo {} | awk '{print \$2}' | xargs git diff --color" | awk '{print $2}')
    if [[ -n "$selected" ]]; then
        git reset `paste -s - <<< $selected`
        echo "Completed: git reset $selected"
    fi
}

# fzf-cdr 
function fzf-cdr() {
    target_dir=$(unbuffer lsd -l | fzf --ansi | awk '{print $12}')
    if [ -n "$target_dir" ]; then
        cd $target_dir
    fi
}

function fzf-cdr-all() {
    target_dir=$(unbuffer lsd -la | fzf --ansi | awk '{print $12}')
    if [ -n "$target_dir" ]; then
        cd $target_dir
    fi
}
