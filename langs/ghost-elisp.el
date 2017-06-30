;;; EmacsLisp

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (rainbow-delimiters-mode t)
            (enable-paredit-mode)))

(provide 'ghost-elisp)
