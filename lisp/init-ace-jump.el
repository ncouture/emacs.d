(require-package 'ace-jump-mode)
(require 'ace-jump-mode)

(define-key global-map
  (kbd "C-c C-j") 'ace-jump-mode)

(provide 'init-ace-jump)
