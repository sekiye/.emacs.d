(require 'helm-gtags)

;;; Enable helm-gtags-mode
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)

;; customize
(setq helm-gtags-path-style 'relative)
(setq helm-gtags-ignore-case t)
(setq helm-gtags-read-only t)
(setq helm-gtags-auto-update t)

;; key bindings
(add-hook 'helm-gtags-mode-hook
          '(lambda ()
	     (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
	     (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
	     (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
	     (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)))
