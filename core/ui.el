;;; Code:

;; disable menubar, toolbar, scrollbar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; font
(set-frame-font "-apple-Source_Code_Pro-medium-normal-normal-*-*-*-*-*-m-0-iso10646-")

;; theme
(load-theme 'distinguished t)
;;(load-theme 'light-soap t)
;;(load-theme 'zenburn t)
;;(load-theme 'ample-flat t)
;;(enable-theme 'ample-flat)


(provide 'ui)
