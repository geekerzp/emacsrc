;;; UI --- UI configurations
;;; Commentary:

;;; Code:

;; disable menubar, toolbar, scrollbar
;; (menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; font
(set-face-attribute 'default nil
                    :family "Envy Code R" :height 125 :weight 'Regular)

;; line spacing
(setq line-spacing 1.5)

;; theme
(load-theme 'distinguished t)

;; mode line
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; smart mode line
(setq sml/no-confirm-load-theme t)
(setq sml/theme 'respectful)
;; (setq sml/theme 'light)
(add-hook 'after-init-hook #'sml/setup)

;; indent guide line
(require 'indent-guide)

(setq indent-guide-recursive t)

(indent-guide-global-mode)

;; nyan mode
(add-hook 'after-init-hook 'nyan-mode)

(provide 'ui)
;;; ui.el ends here
