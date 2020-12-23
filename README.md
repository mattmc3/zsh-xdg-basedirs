# zsh-xdg-basedirs

> ZSH plugin to configure XDG base directory support

This project aims to set the configuration options for apps that only have partial support for the [XDG base directory][xdg-basedir] specification.

Using XDG base directories keep apps from cluttering your `$HOME`

Read more about [XDG app support here][xdg-apps].

## Configuration

To configure apps to use XDG base dir locations, set the following zstyle before sourcing this plugin:

```shell
zstyle ':xdg-basedirs:*' apps \
      'docker' \
      'gnupg' \
      'less' \
      'tmux' \
      'readline'
```

## App support

The following apps are supported in this plugin:

- [ack]
- [anaconda]
- [atom]
- [docker-machine]
- [docker]
- [gnupg]
- [jupyter]
- [less]
- [mysql]
- [nodejs]
- [npm]
- [nuget]
- [pass]
- [postgresql]
- [readline]
- [ruby-bundler]
- [ruby-gems]
- [rust-cargo]
- [screen]
- [subversion]
- [tmux]
- [todo-txt]
- [vagrant]
- [wget]
- [z]

## Installation

- [znap]: `znap clone mattmc3/zsh-xdg-basedirs && znap source zsh-xdg-basedirs`
- [antibody]: `antibody bundle mattmc3/zsh-xdg-basedirs`
- [zgen]: `zgen load mattmc3/zsh-xdg-basedirs`
- [antigen]: `antigen bundle mattmc3/zsh-xdg-basedirs`

[ack]: https://beyondgrep.com
[anaconda]: https://www.anaconda.com
[atom]: https://atom.io
[docker-machine]: https://github.com/docker/machine
[docker]: https://www.docker.com
[gnupg]: https://www.gnupg.org
[ipython]: https://jupyter.org
[jupyter]: https://jupyter.org
[less]: http://man7.org/linux/man-pages/man1/less.1.html
[mysql]: https://www.mysql.com
[nodejs]: https://nodejs.org
[npm]: https://www.npmjs.com
[nuget]: https://www.nuget.org
[pass]: https://www.passwordstore.org
[postgresql]: https://www.postgresql.org
[readline]: http://tiswww.case.edu/php/chet/readline/rltop.html
[ruby-bundler]: https://bundler.io/
[ruby-gems]: https://rubygems.org
[rust-cargo]: https://crates.io/
[screen]: https://www.gnu.org/software/screen
[subversion]: https://subversion.apache.org
[tmux]: https://github.com/tmux/tmux/wiki
[todo-txt]: https://github.com/todotxt/todo.txt-cli
[vagrant]: https://www.vagrantup.com
[wget]: https://www.gnu.org/software/wget/
[z]: https://github.com/rupa/z
[xdg-basedir]: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
[xdg-apps]: https://wiki.archlinux.org/index.php/XDG_Base_Directory
[antigen]: https://github.com/zsh-users/antigen
[antibody]: https://getantibody.github.io
[znap]: https://github.com/marlonrichert/zsh-snap
[zgen]: https://github.com/tarjoilija/zgen
