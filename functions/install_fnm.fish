function install_fnm --description "fnm installer"
    command curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell
    command fnm completions --shell fish >$fish_complete_path[1]/fnm.fish
end
