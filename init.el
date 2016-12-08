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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (tern-auto-complete markdown-mode nxhtml "ein" ein skewer-less widgetjs xref-js2 grunt gulp-task-runner company-tern amd-mode jade js2-refactor tern whole-line-or-region whitespace-cleanup-mode unfill undo-tree tidy tagedit smex slime-company session scss-mode sass-mode redshank rainbow-mode rainbow-delimiters projectile paredit-everywhere page-break-lines origami org-plus-contrib nlinum neotree multiple-cursors move-dup mmm-mode magit lively less-css-mode ipretty indent-guide immortal-scratch idomenu ido-ubiquitous hl-sexp hippie-expand-slime highlight-symbol highlight-quoted highlight-escape-sequences guide-key gnuplot fullframe flycheck-package fill-column-indicator expand-region eval-expr elpy elisp-slime-nav editorconfig disable-mouse dired-sort dired+ diminish diff-hl css-eldoc counsel company-quickhelp cl-lib-highlight cl-generic cask-mode browse-kill-ring browse-at-remote beacon bbdb avy auto-compile aggressive-indent ace-jump-mode)))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-mode-line-clock ((t (:foreground "red" :box (:line-width -1 :style released-button))))))
