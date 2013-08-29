;; helm-c-moccur
;; http://d.hatena.ne.jp/IMAKADO/20080724/1216882563
(require 'helm-c-moccur)

(setq helm-c-moccur-helm-idle-delay 0.1)

;; `helm-c-moccur-dmoccur などのコマンドでバッファの情報をハイライトする
(setq helm-c-moccur-higligt-info-line-flag t)

;; 現在選択中の候補の位置を他のwindowに表示する
(setq helm-c-moccur-enable-auto-look-flag t)

;; `helm-c-moccur-occur-by-moccur の起動時にポイントの位置の単語を初期パターンにする
(setq helm-c-moccur-enable-initial-pattern t)

;;; キーバインドの割当(好みに合わせて設定してください)
(define-key global-map (kbd "M-o") 'helm-c-moccur-occur-by-moccur) ;バッファ内検索
(define-key global-map (kbd "C-M-o") 'helm-c-moccur-dmoccur) ;ディレクトリ
(define-key global-map (kbd "s-o") 'helm-c-moccur-buffer-list)

(define-key isearch-mode-map (kbd "M-o") 'helm-c-moccur-from-isearch)

(defun dired-mode-hook-for-helm-c-moccur ()
  (local-set-key (kbd "O") 'helm-c-moccur-dired-do-moccur-by-moccur))
(add-hook 'dired-mode-hook 'dired-mode-hook-for-helm-c-moccur)
