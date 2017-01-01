(require-package 'elpy)
(require-package 'sphinx-doc)
(require 'elpy)
(require 'sphinx-doc)

(elpy-enable)
(setenv "WORKON_HOME" (expand-file-name "~/.virtualenvs"))
(setq elpy-rpc-backend "rope")
(add-hook 'python-mode-hook (lambda ()
                              (require 'sphinx-doc)
                              (sphinx-doc-mode t)))


(add-hook 'pyvenv-post-activate-hooks 'fc/configure-elpy-from-env)

(defun fc/configure-elpy-from-env ()
  (dolist (elt process-environment)
    (when (string-match "\\`\\(ELPY_[^=]*\\)=\\(.*\\)\\'" elt)
      (let ((var (downcase
                  (replace-regexp-in-string "_" "-" (match-string 1 elt))))
            (val (match-string 2 elt)))
        (set (intern var) (read val))))))
(global-set-key (kbd "C-c ,") 'elpy-multiedit)

(defun elpy-goto-definition-or-rgrep ()
  "Go to the definition of the symbol at point, if found. Otherwise, run `elpy-rgrep-symbol'."
  (interactive)
  (ring-insert find-tag-marker-ring (point-marker))
  (condition-case nil (elpy-goto-definition)
    (error (elpy-rgrep-symbol
            (concat "\\(def\\|class\\)\s" (thing-at-point 'symbol) "(")))))

;;(define-key elpy-mode-map (kbd "M-.") 'elpy-goto-definition-or-rgrep)


(provide 'init-elpy)
