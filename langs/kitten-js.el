;;; javascript --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(js2-mode json-mode tern))

(require 'js2-mode)
(require 'tern)

(add-to-list 'auto-mode-alist '("\\.js\\'"    . js2-mode))
(add-to-list 'auto-mode-alist '("\\.pac\\'"   . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  (company-mode +1))

(defun kitten/js2-mode-hook ()
  "Hooks for js2-mode."
  (setq mode-name "JS2")
  (js2-imenu-extras-mode 1)
  (tern-mode 1))

(add-hook 'js2-mode-hook 'kitten/js2-mode-hook)

(provide 'kitten-js)
;;; kitten-js.el ends here
