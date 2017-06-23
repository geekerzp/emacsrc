;;; osx

(ghost-require-packages '(exec-path-from-shell))

(require 'exec-path-from-shell)

;; shell path (for os x)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; for osx terminal
(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

;; mac switch meta key
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'super)

;; font ligatures
(add-hook 'prog-mode-hook (lambda () (mac-auto-operator-composition-mode t)))

(provide 'osx)
;;; osx.el ends here
