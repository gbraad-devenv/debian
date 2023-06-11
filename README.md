Gerard Braad's Debian Development Environment
=============================================
!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Installation and deployment scripts for my personal development environment.


Usage
-----

### Cloud

  * Open in [Gitpod workspace](https://gitpod.io/#https://github.com/gbraad-devenv/debian)
  * Open in [GitHub Codespaces](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=636945920)
  * Open in [CodeSandbox](https://codesandbox.io/p/github/gbraad-devenv/debian)
  * `devenv` => `debenv`, `debsys` in [my dotfiles](https://github.com/gbraad/dotfiles/blob/main/zsh/.zshrc.d/devenv.zsh)


### Podman

```bash
$ podman run -it ghcr.io/gbraad-devenv/debian/dotfiles:bookworm /bin/zsh 
```

or with [Tailscale](https://tailscale.com) enabled:

```bash
$ podman run -it --cap-add=NET_ADMIN --cap-add=NET_RAW --device=/dev/net/tun ghcr.io/gbraad-devenv/debian/dotfiles:bookworm /bin/zsh
```

Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://gbraad.nl/social)  |
