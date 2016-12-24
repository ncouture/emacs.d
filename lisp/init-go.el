(require-package 'go-mode)
(require 'go-mode)
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "M-.") #'godef-jump)))

(provide 'init-go)
