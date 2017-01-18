
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-safe-themes
   (quote
    ("b9b1a8d2ec1d5c17700e1a09256f33c2520b26f49980ed9e217e444c381279a9" default)))
 '(debug-on-error t)
 '(package-selected-packages
   (quote
    (magit multiple-cursors suscolors-theme robe smartparens enh-ruby-mode ag auto-complete pallet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/custom")
(load "powerline.el")
(load "theme.el")
(load "00common-setup.el")
;;(load "01ruby.el")

(global-set-key (kbd "C-c g") 'magit-status)

(require 'multiple-cursors)
(global-set-key (kbd "C-c e") 'mc/edit-lines)
(global-set-key (kbd "C-c a") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c <right>") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c <left>") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c <down>") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-c <up>") 'mc/skip-to-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
	     "~/.emacs.d/.cask/25.1/elpa/auto-complete-20161029.643/dict")
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)

(require 'smartparens-config)
(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)
(sp-with-modes '(rhtml-mode)
  (sp-local-pair "<" ">"))

;;(add-hook 'ruby-mode-hook 'robe-mode)
