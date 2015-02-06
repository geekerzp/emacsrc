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

;; Semantic is a package that provides language-aware editing commands based on 'source code parsers'.
;; When enabled, each file you visit is automatically parsed. Semantic provides execellent supports for C/C++.
(semantic-mode t)

;; setting cursor
(setq-default cursor-type 'hbar)
(set-cursor-color "#eaa433")

(provide 'core)
