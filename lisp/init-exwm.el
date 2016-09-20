(require-package 'exwm)
(require 'exwm)
(require 'exwm-config)
(require 'exwm-randr)
(require 'exwm-cm)
(require 'exwm-systemtray)
(exwm-systemtray-enable)

(exwm-config-default)
(setq exwm-randr-workspace-output-plist '(0 "VGA1"))
(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output VGA1 --auto --left-of LVDS1")))
(exwm-randr-enable)

;; Make all Emacs frames opaque.
(setq window-system-default-frame-alist '((x . ((alpha . 100)))))
;; Assign everything else a 80% opacity.
(setq exwm-cm-opacity 80)
(exwm-cm-enable)

(provide 'init-exwm)
