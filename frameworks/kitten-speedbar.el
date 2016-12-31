;;; Speedbar --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(sr-speedbar))

(require 'sr-speedbar)

;; keybindings
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)

(setq sr-speedbar-right-side nil)
(setq speedbar-smart-directory-expand-flag t)
(setq speedbar-use-images t)
(setq sr-speedbar-auto-refresh nil)
(setq sr-speedbar-width 30)
(setq sr-speedbar-right-side nil)

;; extensions
(speedbar-add-supported-extension ".rb")
(speedbar-add-supported-extension ".rake")
(speedbar-add-supported-extension ".js")
(speedbar-add-supported-extension ".clj")
(speedbar-add-supported-extension ".html")
(speedbar-add-supported-extension ".erb")
(speedbar-add-supported-extension ".sql")
(speedbar-add-supported-extension ".sh")
(speedbar-add-supported-extension ".css")
(speedbar-add-supported-extension ".scss")
(speedbar-add-supported-extension ".yml")
(speedbar-add-supported-extension ".coffee")
(speedbar-add-supported-extension ".ts")
(speedbar-add-supported-extension ".json")
(speedbar-add-supported-extension ".jbuilder")
(speedbar-add-supported-extension ".slim")
(speedbar-add-supported-extension ".exs")
(speedbar-add-supported-extension ".ex")
(speedbar-add-supported-extension ".eex")

(add-hook 'speedbar-mode-hook '(lambda () (linum-mode -1)))

(provide 'kitten-speedbar)
