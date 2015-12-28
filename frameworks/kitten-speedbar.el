;;; Speedbar --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(sr-speedbar))

(require 'sr-speedbar)

;; keybindings
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)

(setq sr-speedbar-right-side nil)
(setq speedbar-smart-directory-expand-flag t)
(setq speedbar-use-images nil)
(setq sr-speedbar-auto-refresh nil)
(setq sr-speedbar-width 30)
(setq sr-speedbar-right-side nil)
(speedbar-add-supported-extension ".rb")
(speedbar-add-supported-extension ".rake")
(speedbar-add-supported-extension ".js")
(speedbar-add-supported-extension ".clj")
(speedbar-add-supported-extension ".html")
(speedbar-add-supported-extension ".erb")
(speedbar-add-supported-extension ".sql")

(provide 'kitten-speedbar)
