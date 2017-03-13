## Dockemacs - the minimal emacs noX

[![Build Status](https://travis-ci.org/AfsmNGhr/emacs.svg)](https://travis-ci.org/AfsmNGhr/dockemacs "Build status from Travis CI")
[![](https://images.microbadger.com/badges/version/afsmnghr/alpine-emacs.svg)](https://microbadger.com/images/afsmnghr/alpine-emacs "Latest version")
[![](https://images.microbadger.com/badges/image/afsmnghr/alpine-emacs.svg)](https://microbadger.com/images/afsmnghr/alpine-emacs "Image size / layers")
[![Docker Pulls](https://img.shields.io/docker/pulls/afsmnghr/alpine-emacs.svg?style=flat-square)](https://hub.docker.com/r/afsmnghr/alpine-emacs/)
[![Docker Stars](https://img.shields.io/docker/stars/afsmnghr/alpine-emacs.svg?style=flat-square)](https://hub.docker.com/r/afsmgnhr/alpine-emacs/)

![Dockemacs](http://i.imgur.com/q0QaG7W.png "Image is clickable")

## Installation

* [Install Docker Engine](https://docs.docker.com/engine/installation/):
* [Install Docker Compose](https://docs.docker.com/compose/install/):
* Backup old emacs config:

  ```sh
  cp ~/.emacs.d ~/.emacs.d.backup
  ```

* Clone the repository to your `$HOME`:

  ```sh
  cd ~
  git clone git@github.com:AfsmNGhr/dockemacs.git .emacs.d
  ```

* Prepare development.env, check your `ENV_VARS`:

  ```sh
  cd .emacs.d
  cp development.template.env development.env
  ```

* Add executable file:

  ```sh
  echo "export PATH=$HOME/.emacs.d/bin:$PATH" >> ~/.bashrc
  ```

* Run and wait until the boot:

  ```sh
  $ dockemacs
  ````

## Customize & [Themes](themes.md)

## Benchmark

```.clojure
Benchmark results

╼►[benchmark-init/root nil 1141ms]
  ├─[sass-mode require 4ms]
  │ ╰─[haml-mode require 11ms]
  │   ├─[js require 15ms]
  │   │ ├─[sgml-mode require 6ms]
  │   │ ├─[imenu require 4ms]
  │   │ ╰─[cc-mode require 20ms]
  │   │   ├─[cc-fonts require 9ms]
  │   │   ├─[cc-guess require 3ms]
  │   │   ├─[cc-menus require 3ms]
  │   │   ├─[cc-cmds require 8ms]
  │   │   ├─[cc-styles require 4ms]
  │   │   │ ╰─[cc-align require 5ms]
  │   │   ├─[cc-engine require 19ms]
  │   │   ├─[cc-vars require 12ms]
  │   │   ╰─[cc-defs require 15ms]
  │   ├─[markdown-mode require 25ms]
  │   ├─[css-mode require 10ms]
  │   ╰─[ruby-mode require 14ms]
  │     ╰─[smie require 12ms]
  ├─[yasnippet require 193ms]
  │ ├─[~/.emacs.d/elpa/yasnippet-0.11.0/snippets/prog-mode/.yas-setup load 1ms]
  │ ├─[~/.emacs.d/elpa/yasnippet-0.11.0/snippets/prog-mode/.yas-compiled-snippets load 0ms]
  │ ├─[~/.emacs.d/elpa/yasnippet-0.11.0/snippets/emacs-lisp-mode/.yas-setup load 0ms]
  │ ├─[~/.emacs.d/elpa/yasnippet-0.11.0/snippets/emacs-lisp-mode/.yas-compiled-snippets load 0ms]
  │ ├─[~/.emacs.d/elpa/yasnippet-0.11.0/snippets/lisp-interaction-mode/.yas-setup load 0ms]
  │ ╰─[~/.emacs.d/elpa/yasnippet-0.11.0/snippets/lisp-interaction-mode/.yas-compiled-snippets load 0ms]
  ├─[org require 56ms]
  │ ├─[org-clock require 6ms]
  │ ├─[org-protocol require 3ms]
  │ ├─[org-macro require 4ms]
  │ ├─[org-footnote require 5ms]
  │ ├─[org-pcomplete require 6ms]
  │ ├─[org-list require 14ms]
  │ ├─[org-faces require 9ms]
  │ ├─[org-entities require 3ms]
  │ ├─[outline require 4ms]
  │ ├─[ob-js require 2ms]
  │ ├─[ob-ruby require 3ms]
  │ ├─[ob-sh require 2ms]
  │ │ ╰─[shell require 4ms]
  │ │   ╰─[pcomplete require 4ms]
  │ ├─[ob-emacs-lisp require 3ms]
  │ │ ╰─[ob require 3ms]
  │ │   ├─[ob-tangle require 3ms]
  │ │   ├─[ob-ref require 2ms]
  │ │   ├─[ob-lob require 2ms]
  │ │   ├─[ob-table require 2ms]
  │ │   ├─[ob-exp require 2ms]
  │ │   │ ╰─[org-src require 4ms]
  │ │   │   ╰─[ob-keys require 2ms]
  │ │   ├─[ob-comint require 2ms]
  │ │   ├─[ob-core require 7ms]
  │ │   ╰─[ob-eval require 2ms]
  │ ├─[org-compat require 4ms]
  │ ├─[org-macs require 5ms]
  │ ├─[org-loaddefs.el load 60ms]
  │ ├─[format-spec require 5ms]
  │ ╰─[calendar require 20ms]
  │   ├─[cal-menu require 8ms]
  │   ╰─[cal-loaddefs load 15ms]
  ├─[company-web require 3ms]
  │ ├─[cl require 10ms]
  │ ╰─[web-completion-data require 4ms]
  ├─[keyfreq require 6ms]
  ├─[/usr/share/emacs/25.1/lisp/term/xterm.elc load 2ms]
  ├─[default load 3ms]
  ├─[~/.emacs.d/conf.d/term load 1ms]
  ├─[~/.emacs.d/conf.d/templates load 2ms]
  ├─[~/.emacs.d/conf.d/ruby load 4ms]
  ├─[~/.emacs.d/conf.d/remote load 1ms]
  ├─[~/.emacs.d/conf.d/org load 1ms]
  ├─[~/.emacs.d/conf.d/lisp load 1ms]
  ├─[~/.emacs.d/conf.d/kbd load 1ms]
  ├─[~/.emacs.d/conf.d/js load 2ms]
  ├─[~/.emacs.d/conf.d/interface load 24ms]
  │ ├─[~/.emacs.d/history load 0ms]
  │ ╰─[filenotify require 2ms]
  ├─[~/.emacs.d/conf.d/hooks load 1ms]
  ├─[~/.emacs.d/conf.d/features load 95ms]
  │ ├─[grep require 5ms]
  │ ├─[ibuf-ext require 5ms]
  │ ├─[ibuffer require 21ms]
  │ ├─[thingatpt require 3ms]
  │ ├─[bookmark require 6ms]
  │ │ ╰─[pp require 3ms]
  │ ├─[json require 3ms]
  │ │ ╰─[map require 3ms]
  │ ├─[find-func require 3ms]
  │ ├─[rx require 3ms]
  │ ├─[subr-x require 3ms]
  │ ├─[dash require 5ms]
  │ ├─[~/.emacs.d/company-statistics-cache.el load 1ms]
  │ ├─[company-dabbrev require 1ms]
  │ ├─[company-capf require 1ms]
  │ ├─[company-cmake require 1ms]
  │ ├─[company-clang require 1ms]
  │ ├─[company-eclim require 1ms]
  │ │ ╰─[company-template require 1ms]
  │ ├─[etags require 5ms]
  │ │ ╰─[xref require 7ms]
  │ │   ├─[project require 3ms]
  │ │   ╰─[eieio require 7ms]
  │ │     ╰─[eieio-core require 4ms]
  │ │       ╰─[cl-macs require 4ms]
  │ ├─[compile require 6ms]
  │ │ ╰─[comint require 6ms]
  │ │   ├─[regexp-opt require 3ms]
  │ │   ├─[ansi-color require 3ms]
  │ │   ╰─[ring require 3ms]
  │ ├─[ewoc require 3ms]
  │ ├─[ido-ubiquitous require 53ms]
  │ │ ├─[ido-completing-read+ require 5ms]
  │ │ ╰─[cus-edit require 11ms]
  │ ├─[flx-ido require 16ms]
  │ │ ╰─[flx require 1ms]
  │ ├─[ido-hacks require 2ms]
  │ │ ╰─[ido require 18ms]
  │ ╰─[kmacro require 4ms]
  ├─[~/.emacs.d/conf.d/defuns load 1ms]
  ├─[~/.emacs.d/conf.d/custom load 4ms]
  │ ├─[~/.emacs.d/recentf load 1ms]
  │ ├─[recentf load 23ms]
  │ │ ╰─[tree-widget require 4ms]
  │ │   ╰─[wid-edit require 5ms]
  │ ├─[whitespace load 6ms]
  │ ├─[cus-start require 10ms]
  │ ╰─[cus-load require 22ms]
  ╰─[~/.emacs.d/conf.d/aliases load 2ms]

-UUU:%%--F1  *GNU Emacs*    All  (Fundamental WS) 13:04 0.64 ----------------------------------------------
 0.7 seconds
```

### *To be continued...*
