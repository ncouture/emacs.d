;; my browser is firejail chromium
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program (expand-file-name "~/bin/chromium"))

;; impose gnutls-cli when supported -- this requires an initial
;; manual execution of gnutls-cli --strict-tofu -p <port> <host>
;; to store a host's SSL certificate before it can be accepted
(if (fboundp 'gnutls-available-p)
    (fmakunbound 'gnutls-available-p))
(setq tls-program '("gnutls-cli --strict-tofu -p %p %h")
      imap-ssl-program '("gnutls-cli --strict-tofu -p %p %s"))

;; MobileOrg
;;(defvar org-mobile-directory "~/mobileorg")
;;(defvar org-mobile-inbox-for-pull "~/org/from-mobile.org")

;;(defun print-som-gpg()
;;  (require 'epa-file)
;;  (epa-file-enable)
;;  (setq epa-file-name-regexp "\\.\\(gpg\\|asc\\)$")
;;  (epa-file-name-regexp-update)
;;  (print-som-pp))

(provide 'init-settings)


