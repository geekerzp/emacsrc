;;; UI

(require 'spaceline-all-the-icons)
(require 'highlight-indent-guides)

;; disable menubar, toolbar, scrollbar
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; font
(set-face-attribute 'default nil
                    :family "Hasklig" :height 118 :weight 'Regular)

;; line spacing
(setq line-spacing 1.5)

;; themes
(load-theme 'zenburn t)

;; mode line (spaceline all the icons)
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)
(spaceline-all-the-icons-theme)
(spaceline-all-the-icons--setup-neotree)
(spaceline-all-the-icons--setup-anzu)
(spaceline-all-the-icons--setup-package-updates)
(custom-set-variables '(spaceline-all-the-icons-separator-type 'cup))
(custom-set-variables '(spaceline-all-the-icons-icon-set-modified 'toggle))

;; indent guides
(setq highlight-indent-guides-method 'character)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

(provide 'ui)
;;; ui.el ends here
