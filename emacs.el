(load-theme 'wombat t)

(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

;; Japanese settings
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

; neotree
;(add-to-list 'load-path "~/.emacs.d/plugin/neotree")
;(require 'neotree)
;(global-set-key [f8] 'neotree-toggle)
