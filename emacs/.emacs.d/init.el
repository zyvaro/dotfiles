(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(setq backup-directory-alist '(("." . "~/.emacs.d/backups/")))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(setq tab-width 4)
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(setq inhibit-startup-screen 0)
;; (tool-bar-mode 0)
;; (menu-bar-mode 0)
;; (scroll-bar-mode 0)

;; Set font
(add-to-list 'default-frame-alist
	     '(font . "UbuntuMono Nerd Font Mono-14"))

;; Move text
(global-set-key (kbd "M-p") 'move-text-up)
(global-set-key (kbd "M-n") 'move-text-down)

;; Multiple cursor
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Company mode
(add-hook 'after-init-hook 'global-company-mode)

;; Interactive do
(ido-mode 1)
(ido-everywhere 1)
(fido-mode 1)
