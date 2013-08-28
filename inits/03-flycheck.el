(setq flycheck-clang-include-path '("."))
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(global-set-key (kbd "M-n") 'flycheck-next-error)
(flycheck-define-checker c/c++-g++
  "A C/C++ checker using g++."
  :command ("/usr/local/bin/g++-4.8" "-std=c++11" "-Wall" "-Wextra" "-fsyntax-only" "-I." source)
  :error-patterns  ((error line-start
                           (file-name) ":" line ":" column ":" " error: " (message)
                           line-end)
                    (warning line-start
                           (file-name) ":" line ":" column ":" " warning: " (message)
                           line-end))
  :modes (c++-mode))
(setq flycheck-checkers (delq 'c/c++-clang flycheck-checkers))
(add-to-list 'flycheck-checkers 'c/c++-g++)
