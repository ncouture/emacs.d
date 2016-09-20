;;; Package --- x
;;; Commentary:
;;; Code:
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-packages)
(require 'init-exwm)
(require 'init-hippie-expand)
(require 'init-fci)
(require 'init-elpy)
(require 'init-magit)
(require 'init-ace-jump)
(require 'init-multiple-cursors)
(require 'init-utils)
(require 'init-ido)
(require 'init-mmm)
(require 'init-neotree)
(require 'init-org-mode)
(require 'init-settings)
(require 'init-utils)
(require 'init-css)
(require 'init-flycheck)
(require 'init-flyspell)
(require 'init-grep)
(require 'init-gui-frames)
(require 'init-frame-hooks)
(require 'init-ivy)
(require 'init-company)
(require 'init-compat)
(require 'init-dired)
(require 'init-mail)
(require 'init-github)
;;(require 'init-helm)
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
(require 'init-org-page)
(require-package 'beacon)
(require-package 'gnuplot)

(beacon-mode t)

(require 'server)
(unless (server-running-p)
  (server-start))

(require 'init-intro)
(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#eaeaea" "#d54e53" "#b9ca4a" "#e7c547" "#7aa6da" "#c397d8" "#70c0b1" "#424242"))
 '(custom-safe-themes
   (quote
    ("da15b6c37879302bc0d751e1f53db16d0f610df612f0b1edc1ec514dddb1ba23" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(fci-rule-color "#424242")
 '(hl-sexp-background-color "#1c1f26")
 '(session-use-package t nil (session))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#d54e53")
     (40 . "#e78c45")
     (60 . "#e7c547")
     (80 . "#b9ca4a")
     (100 . "#70c0b1")
     (120 . "#7aa6da")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "#e78c45")
     (200 . "#e7c547")
     (220 . "#b9ca4a")
     (240 . "#70c0b1")
     (260 . "#7aa6da")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "#e78c45")
     (340 . "#e7c547")
     (360 . "#b9ca4a"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-mode-line-clock ((t (:foreground "red" :box (:line-width -1 :style released-button))))))
