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
;; (add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Semantic is a package that provides language-aware editing commands based on 'source code parsers'.
;; When enabled, each file you visit is automatically parsed. Semantic provides execellent supports for C/C++.
(semantic-mode t)

;; setting cursor
(setq-default cursor-type 'hbar)
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

(require 'dired)
(require 'dired-x)
;; allow dired to be able to delete or copy a whole dir.
(setq dired-recursive-copies (quote always)) ; “always” means no asking
(setq dired-recursive-deletes (quote top)) ; “top” means ask once

(setq dired-dwim-target t)

(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file) ; was dired-advertised-find-file

;; global abbrev mode
(setq default-abbrev-mode t)

(provide 'core)
