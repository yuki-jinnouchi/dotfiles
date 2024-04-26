# -----------------------------
# History
# -----------------------------

# ref: https://qiita.com/ryuichi1208/items/2eef96debebb15f5b402

# 基本設定
HISTSIZE=100000
SAVEHIST=1000000

# ヒストリーに重複を表示しない
setopt histignorealldups

# 他のターミナルとヒストリーを共有
# setopt share_history

# すでにhistoryにあるコマンドは残さない
setopt hist_ignore_all_dups

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
