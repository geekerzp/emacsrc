;;; EmacsLisp --- setup

;;; Commentary:

;;; Code:
(defun kitten/emacs-lisp-mode-hook ()
  "Hooks for Emacs Lisp mode."
  (rainbow-delimiters-mode 1)
  (enable-paredit-mode))

(add-hook 'emacs-lisp-mode-hook 'kitten/emacs-lisp-mode-hook)

(provide 'kitten-elisp)
;;; kitten-elisp.el ends here
