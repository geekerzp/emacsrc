(require 'smart-mode-line)

(setq sml/name-width 20)
(setq sml/mode-width 'full)
(setq sml/shorten-directory t)
(setq sml/shorten-modes t)
(rich-minority-mode 1)
(setq sml/no-confirm-load-theme t)
(sml/setup)
(sml/apply-theme 'respectful)

(provide 'super-smart-mode-line)
