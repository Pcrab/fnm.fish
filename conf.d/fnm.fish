# fnm
set FNM_PATH "$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]
    set PATH "$FNM_PATH" $PATH
    fnm env --use-on-cd --shell fish | source
else
    # install if needed
    curl -fsSL https://fnm.vercel.app/install | bash
end
