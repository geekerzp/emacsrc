;;; javascript --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(js2-mode json-mode tern))

(require 'js2-mode)
(require 'tern)

(setq js2-basic-offset 2)
(setq js-indent-level 2)

(add-to-list 'auto-mode-alist '("\\.jsx?\\'"    . js2-jsx-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))

(defun kitten/js2-mode-hook ()
  "Hooks for js2-mode."
  (setq mode-name "JS2")
  (js2-imenu-extras-mode 1)
  (tern-mode 1)
  (rainbow-delimiters-mode 1))

(add-hook 'js2-mode-hook 'kitten/js2-mode-hook)

(provide 'kitten-js)
;;; kitten-js.el ends here
