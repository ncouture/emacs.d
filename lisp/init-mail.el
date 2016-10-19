;; mu4a + smtpmail config
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")  ;; this is where `make' installs mu4e

(require 'mu4e)
(require 'smtpmail)

(global-set-key (kbd "C-c C-g") 'mu4e)

;; default
(setq mu4e-maildir "~/Maildir")
(setq mu4e-drafts-folder "/[Gmail].Drafts")
(setq mu4e-sent-folder   "/[Gmail].Sent Mail")
(setq mu4e-trash-folder  "/[Gmail].Trash")

;; don't save message to Sent Messages, Gmail/IMAP takes care of this
(setq mu4e-sent-messages-behavior 'delete)

;; setup some handy shortcuts
;; you can quickly switch to your Inbox -- press ``ji''
;; then, when you want archive some messages, move them to
;; the 'All Mail' folder by pressing ``ma''.

(setq mu4e-maildir-shortcuts
      '( ("/INBOX"               . ?i)
         ("/[Gmail].Sent Mail"   . ?s)
         ("/[Gmail].Trash"       . ?t)
         ("/[Gmail].All Mail"    . ?a)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")

;; something about ourselves
(setq
 user-mail-address "nicolas.couture@gmail.com"
 user-full-name  "Nicolas Couture"
 message-signature
 (concat
  "Nicolas Couture\n"
  "Email: nicolas.couture@gmail.com\n"
  "Blog: https://ncouture.github.io | https://google.com/+NicolasCouture\n"
  "\n"))

;; alternatively, for emacs-24 you can use:
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-stream-type 'starttls
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

(provide 'init-mail)
