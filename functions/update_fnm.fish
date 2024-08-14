function update_fnm --description "fnm updater"
    curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell
end
