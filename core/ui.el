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

(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

(provide 'ui)
;;; ui.el ends here
