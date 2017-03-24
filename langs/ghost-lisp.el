;;; CommonLisp

(ghost-require-packages '(sly))

(require 'sly)

(setq interior-lisp-program "/usr/bin/ccl")

(defun ghost-sly-mode-hook ()
  "Hooks for sly mode."
  (sly-company-mode 1)
  (rainbow-delimiters-mode 1)
  (enable-paredit-mode))

(add-hook 'sly-mode-hook 'ghost-sly-mode-hook)

(provide 'ghost-lisp)
