;; TODO: try git-messenger
(require-package 'magit)
(require 'magit)

(global-set-key (kbd "C-c g")
		'magit-status)

;;; fixes CPU hogging magit-refresh
(setq history-length 100)
(put 'minibuffer-history 'history-length 50)
(put 'kill-ring 'history-length 25)

(provide 'init-magit)
