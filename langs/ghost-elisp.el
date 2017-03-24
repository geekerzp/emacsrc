;;; EmacsLisp

(defun ghost-emacs-lisp-mode-hook ()
  "Hooks for Emacs Lisp mode."
  (rainbow-delimiters-mode 1)
  (enable-paredit-mode))

(add-hook 'emacs-lisp-mode-hook 'ghost-emacs-lisp-mode-hook)

(provide 'ghost-elisp)
