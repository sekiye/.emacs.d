(require 'color-moccur)
(require 'moccur-edit)
(require 'bind-key)
(setq moccur-split-word t)
(setq dmoccur-recursive-search t)
(bind-key "M-O" 'isearch-moccur-all isearch-mode-map)
