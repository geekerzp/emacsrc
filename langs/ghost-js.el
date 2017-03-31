;;; javascript

(ghost-require-packages '(js2-mode rjsx-mode json-mode tern))

(require 'js2-mode)
(require 'tern)

(setq js2-basic-offset 2)
(setq js-indent-level 2)
(setq js2-strict-missing-semi-warning nil)

(add-to-list 'auto-mode-alist '("\\.jsx?\\'"    . rjsx-mode))
(add-to-list 'interpreter-mode-alist '("node" . rjsx-mode))

(defun ghost-js2-mode-hook ()
  "Hooks for js2-mode."
  (setq mode-name "JavaScript")
  (js2-imenu-extras-mode t)
  (tern-mode t)
  (rainbow-delimiters-mode t))

(add-hook 'js2-mode-hook 'ghost-js2-mode-hook)

(provide 'ghost-js)
