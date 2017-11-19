;;; custom --- custome configuration for Prelude
;;; Commentary:

;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(defconst my-theme 'monokai)
(disable-theme 'zenburn)
(setq prelude-theme my-theme)
(if (daemonp)
    (add-hook 'after-make-frame-functions
              (lambda (frame)
                (select-frame frame)
                (load-theme my-theme t)))
  (load-theme my-theme t))

(global-hl-line-mode 1)
(set-face-background 'hl-line monokai-gray)
(set-face-foreground 'highlight nil)

(load (expand-file-name "~/.quicklisp/slime-helper.el") :missing-ok)

(provide 'custom)
;;; custom.el ends here
