;;; CommonLisp --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(sly))

(require 'sly)

(setq interior-lisp-program "/usr/bin/ccl")

(defun kitten/sly-mode-hook ()
  "Hooks for sly mode."
  (sly-company-mode 1)
  (rainbow-delimiters-mode 1))

(add-hook 'sly-mode-hook 'kitten/sly-mode-hook)

(provide 'kitten-lisp)
;;; kitten-lisp.el ends here
