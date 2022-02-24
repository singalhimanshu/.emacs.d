;; -*- lexical-binding: t -*-
;; don't show startup screen
(setq inhibit-startup-message t)
;; don't make backup files
(setq make-backup-files nil)

;; unbind
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-z"))

(setq enable-recursive-minibuffers t)
(delete-selection-mode +1)

;; display line numbers globally
(global-display-line-numbers-mode)

;; set yes/no to y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; UI tweaks
(tool-bar-mode -1)
(menu-bar-mode -1)

;; window stuff
(winner-mode 1)

;; (set-background-color "honeydew")

;; recompile
(global-set-key [f5] 'compile)

;; highlight matching parens
(show-paren-mode 1)
(setq show-paren-delay 0)

;; package management
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;;(package-initialize)

(use-package magit
      :ensure t)

(use-package beacon
  :ensure t)
(beacon-mode)

(use-package which-key
  :ensure t
  :config (which-key-mode))


;; Packages

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(fset 'yes-or-no-p 'y-or-n-p)
(global-display-line-numbers-mode)


(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq inhibit-startup-message t
      ring-bell-function 'ignore
      inhibit-splash-screen t
      initial-scratch-message nil)

;; Disable the toolbar
(tool-bar-mode -1)
;; Disable visible scrollbar
(scroll-bar-mode -1)
;; Disable menu bar
(menu-bar-mode -1)

(show-paren-mode 1)
(setq show-paren-delay 0)

(set-face-attribute 'default nil :font "Fantasque Sans Mono-15")
;; (load-theme 'tango-dark t)

(global-set-key [f5] 'compile)

(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(use-package magit
  :ensure t)

(use-package beacon
  :ensure t
  :config (beacon-mode))

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package vertico
  :ensure t
  :config
  (vertico-mode))

(use-package marginalia
  :ensure t
  :config
  (marginalia-mode))

(use-package savehist
  :ensure t
  :init
  (savehist-mode))

(recentf-mode 1)

(use-package consult
  :ensure t
  :bind
  ("C-x b" . consult-buffer)
  ("M-y" . consult-yank-from-kill-ring)
  ("C-x r b" . consult-bookmark)
  ("C-x r g" . consult-ripgrep)
  ("C-x s" . consult-line))

(use-package orderless
  :ensure t
  :config
  (setq completion-styles '(orderless)
	read-buffer-completion-ignore-case t))

(use-package rg
  :ensure t
  :config
  (rg-enable-default-bindings))

(use-package magit
  :ensure t)

(use-package org
  :ensure t)

(setq
 org-startup-indented t
 org-startup-folded t
 org-directory "~/org")
(global-set-key (kbd "C-c c") #'org-capture)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("3d2e532b010eeb2f5e09c79f0b3a277bfc268ca91a59cdda7ffd056b868a03bc" default))
 '(package-selected-packages
   '(rg orderless consult marginalia vertico modus-themes gruber-darker-theme go-mode moody minions which-key beacon magit use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "PfEd" :family "Fantasque Sans Mono")))))
