(require 'anzu)

(global-anzu-mode +1)
(setq anzu-mode-lighter "")
(setq anzu-search-threshold 1000)
(setq anzu-minimum-input-length 3)

(global-set-key (kbd "C-c r") 'anzu-query-replace)
(global-set-key (kbd "C-c R") 'anzu-query-replace-regexp)

