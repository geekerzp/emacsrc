;;; UI --- UI configurations
;;; Commentary:

;;; Code:
(require 'indent-guide)

;; disable menubar, toolbar, scrollbar
;; (menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; font
(set-face-attribute 'default nil
                    :family "Hack" :height 122 :weight 'Regular)

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

(provide 'ui)
;;; ui.el ends here
