(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
