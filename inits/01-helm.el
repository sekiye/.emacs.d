(require 'helm-config)
(global-set-key (kbd "C-x C-f") 'helm-for-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-M-z") 'helm-resume)
(define-key isearch-mode-map (kbd "C-o") 'helm-occur-from-isearch)

