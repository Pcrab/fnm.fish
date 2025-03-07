# fnm
set --query FNM_PATH || set FNM_PATH "$HOME/.local/share/fnm"

if [ -d "$FNM_PATH" ]
    set PATH "$FNM_PATH" $PATH
    fnm env --version-file-strategy=recursive --corepack-enabled --use-on-cd --shell fish | source
end

function _fnm_install --on-event fnm_install
    if not test -d "$FNM_PATH"
        set PATH "$FNM_PATH" $PATH
        install_fnm
        fnm env --version-file-strategy=recursive --corepack-enabled --use-on-cd --shell fish | source
    end
end

function _fnm_uninstall --on-event fnm_uninstall
    command rm -rf $fish_complete_path[1]/fnm.fish
end
