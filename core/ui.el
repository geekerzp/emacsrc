;;; UI

(require 'indent-guide)
(require 'spaceline-all-the-icons)

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
;; (load-theme 'distinguished t)
(load-theme 'tao-yang t)

;; mode line (spaceline all the icons)
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)
(spaceline-all-the-icons-theme)
(spaceline-all-the-icons--setup-neotree)
(spaceline-all-the-icons--setup-anzu)
(spaceline-all-the-icons--setup-package-updates)
(custom-set-variables '(spaceline-all-the-icons-separator-type 'cup))

;; indent guide line
(setq indent-guide-recursive t)
(indent-guide-global-mode)

(provide 'ui)
;;; ui.el ends here
