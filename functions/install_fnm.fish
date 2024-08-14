function install_fnm --description "fnm installer"
    curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell
    fnm completions --shell fish >${fish_complete_path[1]}/fnm.fish
end
