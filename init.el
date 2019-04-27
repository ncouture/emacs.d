;;; Commentary:
;;; Hmph...
;;; Code:
(package-initialize)

(require 'package)

(message "WARNING: configuring 3rd party Emacs package repositories!")
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-packages)
;;(require 'init-exwm)
(require 'init-hippie-expand)
(require 'init-fci)
(require 'init-magit)
(require 'init-ace-jump)
(require 'init-multiple-cursors)
(require 'init-utils)
(require 'init-ido)
(require 'init-mmm)
;;(require 'init-neotree)
(require 'init-org-mode)
(require 'init-settings)
(require 'init-utils)
(require 'init-css)
(require 'init-flycheck)
(require 'init-grep)
(require 'init-gui-frames)
(require 'init-frame-hooks)
(require 'init-ivy)
(require 'init-company)
(require 'init-compat)

;;; dired+ no longer in melpa stable
;;(require 'init-dired)

(require 'init-html)
(require 'init-vc)
(require 'init-editing-utils)
(require 'init-paredit)
(require 'init-lisp)
(require 'init-projectile)
(require 'init-folding)
(require 'init-recentf)
(require 'init-slime)
(require 'init-sessions)
(require 'init-whitespace)
(require 'init-editorconfig)
(require 'init-go)
(require 'init-js)
(require 'init-typescript)

;;(load-file "emacs-js/emacs-js.el")
(require-package 'beacon)
(require-package 'gnuplot)

;;(add-to-list 'load-path "~/.emacs.d/emacs-js/")
;;(require 'init-js)

(require 'init-elpy)

(beacon-mode t)

(require 'server)
(unless (server-running-p)
  (server-start))

;;(load-theme 'sanityinc-tomorrow-night)
(color-theme-sanityinc-tomorrow-day)

;;(set-default-font "Mikachan-16")
;;(setq default-line-spacing 0)
;;(set-face-attribute 'default nil :height 160)
;;(set-default-font "7x14")
;;(setq default-line-spacing 0)
;;(set-face-attribute 'default nil :height 100)
;;(set-default-font "Inconsolata-14")
;;(set-default-font "DejaVuSansMono-11")
;;(set-default-font "TlwgMono-12")
;; (ignore-errors
;;   (set-default-font "monospace-10"))
(ignore-errors
  (set-default-font "SourceCodeProLight-14"))
(global-unset-key (kbd "C-x C-c"))
(global-unset-key (kbd "C-x C-z"))
(require 'init-intro)
(provide 'init)

;;; init.el ends here
