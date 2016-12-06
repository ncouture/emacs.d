(let* ((current-directory (file-name-directory load-file-name))
       (features-directory (expand-file-name ".." current-directory))
       (project-directory (expand-file-name ".." features-directory)))
  (setq js2-refactor-root-path project-directory))

(add-to-list 'load-path js2-refactor-root-path)

(require 'widgetjs)
(require 'js2-mode)
(require 'espuds)
(require 'ert)

;; Do not indent with tabs (to easily check HTML expansion)
(add-hook 'js2-mode-hook (lambda ()
                           (setq indent-tabs-mode nil)))


(Setup
)

(Before
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
