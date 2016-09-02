(require-package 'ace-jump-mode)
(require 'ace-jump-mode)

(define-key global-map
  (kbd "C-c C-r") 'ace-jump-mode)

(provide 'init-ace-jump)
