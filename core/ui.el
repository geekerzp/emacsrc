;;; UI --- UI configurations
;;; Commentary:

;;; Code:
;; disable menubar, toolbar, scrollbar
;; (menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; font
(set-face-attribute 'default nil
                    :family "Hack" :height 110 :weight 'light)

;; theme
(load-theme 'distinguished t)

;; mode line
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; smart mode line
(require 'smart-mode-line)
(setq sml/no-confirm-load-theme t)
(setq sml/theme 'respectful)
(add-hook 'after-init-hook #'sml/setup)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; the blinking cursor is nothing, but an annoyance
(blink-cursor-mode -1)

;; indent guide line
(require 'indent-guide)

(setq indent-guide-recursive t)

(indent-guide-global-mode)

(provide 'ui)
;;; ui.el ends here
