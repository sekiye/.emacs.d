(require 'auto-complete-config)
(ac-config-default)

(require 'ac-helm)
(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm)
