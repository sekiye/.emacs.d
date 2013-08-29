(line-number-mode 1)
(column-number-mode 1)
(show-paren-mode 1)
(menu-bar-mode -1)

(setq use-dialog-box nil)
(defalias 'message-box 'message)

(defun other-window-or-split ()
  (interactive)
  (when (one-window-p) (split-window-horizontally))
  (other-window 1))
(keyboard-translate ?\C-h ?\C-?)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-z") 'other-window-or-split)
(global-set-key (kbd "C-c r") 'query-replace)

(defalias 'qrr 'query-replace-regexp)
(defalias 'yes-or-no-p 'y-or-n-p)

(setq desktop-globals-to-save '(extended-command-history))
(setq desktop-files-not-to-save "")
(desktop-save-mode 1)

(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
