;;; Code:
(set-language-environment "utf-8")

;; backup
(setq make-backup-files nil)

;; auto-save
(setq auto-save-default nil)

;; yes-or-no-p
(fset 'yes-or-no-p 'y-or-n-p)
(setq inhibit-startup-message t)

;; auto-refresh all buffers when files have changed on disk
(global-auto-revert-mode t)

;; trim whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'core)
