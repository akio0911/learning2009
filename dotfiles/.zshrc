HISTFILE=$HOME/.zsh-history         # 履歴の保存先

HISTSIZE=100000                     # メモリに展開する履歴の数

SAVEHIST=100000                     # 保存する履歴の数

setopt share_history                # 同一ホストで動いているZshで履歴を共有
setopt auto_pushd # ディレクトリスタックを保存
setopt correct # コマンドのスペルチェック

function history-all { history -E 1 } # 全履歴の一覧を出力する

bindkey -e   # Emacsと同じキー操作を行う

# 一覧表示された補完候補を C-n C-p C-f C-b のカーソルで選択
zstyle ':completion:*:default' menu select=1

# 保管の定義ファイルを有効にする
autoload -U compinit
compinit

#PROMPT='[${USER}@${HOSTNAME}] %(!.#.$) '
#RPROMPT="%{^[[32m%}[%n@%m:%d]%{^[[m%}"
PROMPT="%/%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

PATH=/opt/local/bin:/opt/local/sbin:${PATH}
PATH=/opt/local/lib/postgresql82/bin:${PATH}
PATH=/flex3sdk/bin:${PATH}
PATH=${HOME}/bin:${PATH}

# for MacBook
#GEMHOME=/opt/local/lib/ruby/gems/1.8/specifications
#GEMHOME=/opt/local/lib/ruby/site_ruby/1.8

#TERM=xterm-256color

#export RUBYOPT='-Ku -r rubygems -w'
export RUBYOPT='-Ku -r rubygems'

#screen

export RUBYLIB=$HOME/ruby/lib

# ls command color
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ls="ls -G"

# history color
autoload -U compinit
compinit
zstyle ':completion:*' list-colors ''

export SVN_EDITOR=vim

export GISTY_DIR="$HOME/git/gists"

