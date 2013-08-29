(require 'yasnippet)
(require 'helm-c-yasnippet)
(setq helm-c-yas-space-match-any-greedy t)
(global-set-key (kbd "C-c y") 'helm-c-yas-complete)
(yas--initialize)
(yas-load-directory "~/.emacs.d/snippets/")

(setq hippie-expand-try-functions-list
      '(yas-hippie-try-expand
	try-expand-all-abbrevs
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-list try-expand-line))
(global-set-key (kbd "M-/") 'hippie-expand)
