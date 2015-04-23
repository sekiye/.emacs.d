(setq flycheck-clang-include-path (list "." "../../include" "include" "/usr/local/include/compute" "/usr/local/cuda/include" "/home/sekiya/src/cpputest/include" "/opt/AMDAPPSDK-3.0-0-Beta/include"))
(add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(global-set-key (kbd "M-n") 'flycheck-next-error)
