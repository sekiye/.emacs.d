(tool-bar-mode -1)
(setq ns-command-modifier (quote meta))

(setq flycheck-clang-include-path '("."))
(setq flycheck-clang-language-standard "c++11")
(add-hook 'after-init-hook #'global-flycheck-mode)
(global-set-key (kbd "M-n") 'flycheck-next-error)

(setq flycheck-clang-include-path (list "." "../../include" "include"))
