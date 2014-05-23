(require 'auto-complete-config)
(ac-config-default)

(require 'ac-helm)
(global-set-key (kbd "C-o") 'ac-complete-with-helm)
(define-key ac-complete-mode-map (kbd "C-o") 'ac-complete-with-helm)
