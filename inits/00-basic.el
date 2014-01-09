(line-number-mode 1)
(column-number-mode 1)
(show-paren-mode 1)
(menu-bar-mode -1)

(setq-default tab-width 4 indent-tabs-mode nil)

(setq use-dialog-box nil)
(defalias 'message-box 'message)

(defun other-window-or-split ()
  (interactive)
  (when (one-window-p) (split-window-horizontally (/ (+ (frame-width) 1) 2)))
  (other-window 1))
(keyboard-translate ?\C-h ?\C-?)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-z") 'other-window-or-split)
(global-set-key (kbd "C-c r") 'query-replace)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq desktop-globals-to-save '(extended-command-history))
(setq desktop-files-not-to-save "")
(desktop-save-mode 1)

(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

(setq truncate-partial-width-windows t)

(add-to-list 'auto-mode-alist '("\\.m\\'" . matlab-mode))

;;; isearch
(defadvice isearch-mode (around isearch-mode-default-string (forward &optional regexp op-fun recursive-edit word-p) activate)
  (if (and transient-mark-mode mark-active (not (eq (mark) (point))))
      (progn
        (isearch-update-ring (buffer-substring-no-properties (mark) (point)))
        (deactivate-mark)
        ad-do-it
        (if (not forward)
            (isearch-repeat-backward)
          (goto-char (mark))
          (isearch-repeat-forward)))
    ad-do-it))

(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-horizontally)
