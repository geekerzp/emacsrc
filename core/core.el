;;; core

(require 'auto-compile)

(auto-compile-on-load-mode 1)
(auto-compile-on-save-mode 1)

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
;; (add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Semantic is a package that provides language-aware editing commands based on 'source code parsers'.
;; When enabled, each file you visit is automatically parsed. Semantic provides execellent supports for C/C++.
(semantic-mode t)

;; setting cursor
(setq-default cursor-type 'box)
(set-cursor-color "#eaa433")

(global-prettify-symbols-mode t)

;; make buffer switch command auto suggestions, also for find-file command
(ido-mode 1)
;; make ido display choices vertically
(setq ido-separator " » ")
;; display any item that contains the chars you typed
(setq ido-enable-flex-matching t)
(setq ido-ignore-buffers '("^ " "*Completions*" "*Shell Command Output*" "Async Shell Command"))

;; don't let the cursor go into minibuffer prompt
(setq minibuffer-prompt-properties (quote (read-only t point-entered minibuffer-avoid-prompt face minibuffer-prompt)))

;; global abbrev mode
(setq default-abbrev-mode t)

;; trailing-whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; saveplace remembers your location in a file when saving files
(require 'saveplace)
(setq save-place-file (expand-file-name "saveplace" savefile-dir))
;; activate it for all buffers
(setq-default save-place t)

;; warning
(setq warning-minimum-level :emergency)

(provide 'core)
;;; core.el ends here
