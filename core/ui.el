;;; UI

(require 'spaceline-all-the-icons)
(require 'highlight-indent-guides)

;; disable menubar, toolbar, scrollbar
;; (menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; font
;; (set-face-attribute 'default nil
;;                     :family "Hack" :height 122 :weight 'Regular)
(set-face-attribute 'default nil
                    :family "Hasklig" :height 122 :weight 'Regular)

;; line spacing
(setq line-spacing 1.5)

;; theme
(load-theme 'nord t)

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
