(require-package 'elpy)
(require 'elpy)

(elpy-enable)
;;(setq elpy-rpc-backend "jedi")
(setq elpy-rpc-backend "rope")

(setenv "WORKON_HOME" (expand-file-name "~/.virtualenvs"))

(defun elpy-goto-definition-or-rgrep ()
  "Go to the definition of the symbol at point, if found. Otherwise, run `elpy-rgrep-symbol'."
    (interactive)
    (ring-insert find-tag-marker-ring (point-marker))
    (condition-case nil (elpy-goto-definition)
        (error (elpy-rgrep-symbol
		(concat "\\(def\\|class\\)\s" (thing-at-point 'symbol) "(")))))

(define-key elpy-mode-map (kbd "M-.") 'elpy-goto-definition-or-rgrep)


(provide 'init-elpy)
