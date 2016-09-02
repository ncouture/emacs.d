;; TODO: try git-messenger
(require-package 'magit)
(require 'magit)

(global-set-key (kbd "C-c g")
		'magit-status)

(provide 'init-magit)
