;;(global-highlight-parentheses-mode t)

;;(add-to-list 'auto-mode-alist
;;	     '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
;;(add-to-list 'auto-mode-alist
;;	     '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))

(setq tramp-default-method "ssh")

(global-linum-mode t)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)

;; Buffer
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Audo-Delete-Trailing-Whitespace
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; To get rid of Weird color escape sequences in Emacs.
;; Instruct Emacs to use emacs term-info not system term info
;; http://stackoverflow.com/questions/8918910/weird-character-zsh-in-emacs-terminal
(setq system-uses-terminfo nil)

;; Prefer utf-8 encoding
(prefer-coding-system 'utf-8)

;; Display continuous lines
(setq-default truncate-lines nil)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)
