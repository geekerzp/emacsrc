;;; flycheck

(use-package flycheck
  :ensure t
  :init
  ;; disable emacs lisp checker
  (setq-default flycheck-disabled-checkers
                '(emacs-lisp emacs-lisp-checkdoc))
  ;; checker for python mode
  (when (derived-mode-p 'python-mode)
    (flycheck-select-checker 'python-flake8))
  ;; checker for ruby code
  (when (derived-mode-p 'ruby-mode)
    (flycheck-select-checker 'rubocop))
  (global-flycheck-mode))

(provide 'ghost-flycheck)
