;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-packages)
;;(require 'init-exwm)
(require 'init-hippie-expand)
(require 'init-fci)
(require 'init-elpy)
(require 'init-magit)
(require 'init-ace-jump)
(require 'init-multiple-cursors)
(require 'init-utils)
(require 'init-ido)
(require 'init-mmm)
;(require 'init-neotree)
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
(require 'init-dired)
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
(require-package 'beacon)
(require-package 'gnuplot)

;;(add-to-list 'load-path "~/.emacs.d/emacs-js/")
(require 'init-js)

(beacon-mode t)

(require 'server)
(unless (server-running-p)
  (server-start))

(setq default-line-spacing 2)
(set-face-attribute 'default nil :height 180)

(require 'init-intro)
(provide 'init)
