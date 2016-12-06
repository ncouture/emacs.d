;; copied from https://github.com/NicolasPetton/emacs.d/
(require-package 'js2-refactor)
(require-package 'js2-mode)
(require-package 'jade)
(require-package 'tern)
(require-package 'widgetjs)
(require 'emacs-js-setup)
(require 'js2-refactor)
(require 'jade)

(defun js2-show-node-at-point ()
  (interactive)
  (let* ((buf (get-buffer-create "*js2-node-at-point*"))
         (node (js2-node-at-point))
         (node-contents (buffer-substring (js2-node-abs-pos node) (js2-node-abs-end node))))
    (with-current-buffer
        (set-buffer buf)
      (delete-region (point-min) (point-max))
      (insert node-contents))))

(defun js2-show-node-parent-at-point ()
  (interactive)
  (let* ((buf (get-buffer-create "*js2-node-at-point*"))
         (node (js2-node-parent (js2-node-at-point)))
         (node-contents (buffer-substring (js2-node-abs-pos node) (js2-node-abs-end node))))
    (with-current-buffer
        (set-buffer buf)
      (delete-region (point-min) (point-max))
      (insert node-contents))))

;; quite useful for debugging
(define-key js2-refactor-mode-map (kbd "C-c C-r p") #'js2-show-node-at-point)

(provide 'init-js)
