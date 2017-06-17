;;; emacs-js-setup.el --- Setup the JS environment            -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Nicolas Petton

;; Author: Nicolas Petton <nicolas@petton.fr>
;; Keywords: convenience

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Setup the JS environment: install required packages if necessary, and setup
;; JS buffers.

;;; Code:

(require 'package)

(package-initialize)

(add-to-list 'load-path "widgetjs")

(when (not package-archive-contents)
  (package-refresh-contents))

(let ((packages-to-load '(amd-mode
                          company-tern
                          eslintd-fix
                          flycheck
                          gulp-task-runner
                          grunt
                          indium
                          js2-mode
                          js2-refactor
                          projectile
                          tern
                          xref-js2)))
  (dolist (package packages-to-load)
    (when (not (package-installed-p package))
      (package-install package))))

(require 'emacs-js)

(provide 'emacs-js-setup)
;;; emacs-js-setup.el ends here
