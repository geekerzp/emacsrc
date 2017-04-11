;;; UI

(require 'indent-guide)
(require 'nyan-mode)
(require 'smart-mode-line)

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
(load-theme 'distinguished t)

;; mode line
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; indent guide line
(setq indent-guide-recursive t)
(indent-guide-global-mode)

;; smart-mode-line
(customize-set-variable 'sml/no-confirm-load-theme t)
(sml/setup)

;; nyan-mode
(nyan-mode t)
(customize-set-variable 'nyan-animate-nyancat t)
(customize-set-variable 'nyan-wavy-trail t)

(provide 'ui)
;;; ui.el ends here
