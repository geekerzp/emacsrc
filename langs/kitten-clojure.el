;;; clojure --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(cider))

(require 'cider)

;; Enable eldoc in clojure buffers
(add-hook 'cider-mode-hook #'eldoc-mode)

;; Log communication with the nREPL server
(setq nrepl-log-messages t)

;; You can hide the *nrepl-connection* and *nrepl-server* buffers from appearing
;; in some buffer switching commands like switch-to-buffer(C-x b).
;; When using switch-to-buffer, pressing SPC after the command will make the hidden buffers visible.
;; They'll always be visible in list-buffers (C-x C-b).
(setq nrepl-hide-special-buffers t)

;; To perfer local resources to remote (tramp) ones when both are available
(setq cider-prefer-local-resources t)

;; Error messages may be wrapped for readability. If this value is nil,
;; messages will not be wrapped; if it is truthy but non-numeric, the default fill-column will be used.
(setq cider-stacktrace-fill-column 80)

;; The REPL buffer name has the format *cider-repl project-name*.
;; Change the separator from space to something else by overriding nrepl-buffer-name-separator.
(setq nrepl-buffer-name-separator "-")

;; The REPL buffer name can also display the port on which the nREPL server is running.
;; Buffer name will look like cider-repl project-name:port.
(setq nrepl-buffer-name-show-port t)

;; Make C-c C-z switch to the CIDER REPL buffer in the current window
(setq cider-repl-display-in-current-window t)

;; Prevent C-c C-k from prompting to save the file corresponding to the buffer being loaded, if it's modified
(setq cider-prompt-save-file-on-load nil)

;; Change the result prefix for REPL evaluation (by default there's no prefix)
(setq cider-repl-result-prefix "ƒ => ")

;; Change the result prefix for interactive evaluation (by default it's =>)
(setq cider-interactive-eval-result-prefix "ƒ => ")

(defun kitten/clojure-mode-hook ()
  "Hooks for clojure mode."
  (rainbow-delimiters-mode 1)
  (enable-paredit-mode))

(add-hook 'clojure-mode-hook 'kitten/clojure-mode-hook)

(defun kitten/cider-mode-hook ()
  "Hooks for cider mode."
  (rainbow-delimiters-mode 1)
  (enable-paredit-mode))

(add-hook 'cider-mode-hook 'kitten/cider-mode-hook)

(defun kitten/cider-repl-mode-hook ()
  "Hooks for cider repl mode."
  (rainbow-delimiters-mode 1)
  (enable-paredit-mode))

(add-hook 'cider-repl-mode-hook 'kitten/cider-repl-mode-hook)

(provide 'kitten-clojure)
;;; kitten-clojure.el ends here
