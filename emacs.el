(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'kiriko t)

;; Japanese settings
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

; neotree
; https://github.com/jaypei/emacs-neotree
(add-to-list 'load-path "~/.emacs.d/plugin/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;rust-mode
(add-to-list 'load-path "~/.emacs.d/plugin/rust-mode")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

