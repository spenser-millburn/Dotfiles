if status is-interactive
end

#Editor
set -x EDITOR nvim

alias kc="kubectl"
alias v="vim"
alias top="htop"
                                                                                             
#OPENAI
set -x OPENAI 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

#gpt-engineer
set -x OPENAI_API_KEY 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

set -x SLINK_FIREBASE_KEY AIzaSyDP3zjsVWdyqOlHQJ1KE5gz9FKuGfGHWI8

#Alpaca
set -x ALPACA_API_KEY PKRZ0FNHUSRK5HEPT522
set -x ALPACA_API_SECRET TXoR24ehOjpT4L9XxMpY12fBrugZPwCYI1Ma0Gt2

bass eval (keychain --eval --agents ssh -Q --quiet id_ed25519 --nogui)
