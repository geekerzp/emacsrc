;;; WebTemplates --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(web-mode web-beautify emmet-mode))

(require 'web-mode)
(require 'emmet-mode)
(require 'tern)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-attr-indent-offset 2)
(setq web-mode-comment-style 2)

(defun kitten/web-mode-hook ()
  "Hooks for web mode."
  (emmet-mode 1)
  (tern-mode 1))

(add-hook 'web-mode-hook 'kitten/web-mode-hook)

(provide 'kitten-web)
;;; kitten-web.el ends here
