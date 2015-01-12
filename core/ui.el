;;; Code:

;; disable menubar, toolbar, scrollbar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; font
(set-face-attribute 'default nil
                    :family "Envy Code R" :height 112 :weight 'normal)

;; theme
(load-theme 'distinguished t)
;;(load-theme 'light-soap t)
;;(load-theme 'zenburn t)
;;(load-theme 'ample-flat t)
;;(enable-theme 'ample-flat)
;;(load-theme 'flatui t)

(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)


(provide 'ui)
