;; my browser is firejail chromium
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program (expand-file-name "~/bin/firefox"))

;; impose gnutls-cli when supported -- this requires an initial
;; manual execution of gnutls-cli --strict-tofu -p <port> <host>
;; to store a host's SSL certificate before it can be accepted
(if (fboundp 'gnutls-available-p)
    (fmakunbound 'gnutls-available-p))

(setq tls-program '("/usr/local/bin/gnutls-cli --strict-tofu -p %p %h")
      imap-ssl-program '("/usr/local/bin/gnutls-cli --strict-tofu -p %p %s"))

(defun bash ()
  (interactive)
  (ansi-term "/bin/bash" "bash"))


(global-set-key (kbd "RET") 'newline-and-indent)
(setq-default
 blink-cursor-interval 0.1
 case-fold-search t
 column-number-mode t
 delete-selection-mode t
 ediff-split-window-function 'split-window-horizontally
 ediff-window-setup-function 'ediff-setup-windows-plain
 indent-tabs-mode nil
 make-backup-files nil
 mouse-yank-at-point t
 save-interprogram-paste-before-kill t
 scroll-preserve-screen-position 'always
 set-mark-command-repeat-pop t
 tooltip-delay 1.5
 truncate-lines nil
 truncate-partial-width-windows nil)

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(global-auto-revert-mode)
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil)

(transient-mark-mode t)

;; MobileOrg
;;(defvar org-mobile-directory "~/mobileorg")
;;(defvar org-mobile-inbox-for-pull "~/org/from-mobile.org")

;;(defun print-som-gpg()
;;  (require 'epa-file)
;;  (epa-file-enable)
;;  (setq epa-file-name-regexp "\\.\\(gpg\\|asc\\)$")
;;  (epa-file-name-regexp-update)
;;  (print-som-pp))

;;----------------------------------------------------------------------------
;; Suppress GUI features
;;----------------------------------------------------------------------------
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))


;;----------------------------------------------------------------------------
;; Show a marker in the left fringe for lines not in the buffer
;;----------------------------------------------------------------------------
(setq indicate-empty-lines t)

(add-hook 'term-mode-hook
          (lambda ()
            (setq line-spacing 0)))

(require-package 'disable-mouse)
(global-disable-mouse-mode)

(setq erc-hide-list '("JOIN" "PART" "QUIT"))

(provide 'init-settings)

