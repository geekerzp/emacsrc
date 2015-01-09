;; Code:

(require 'fic-mode)
(add-hook 'emacs-lisp-mode-hook 'turn-on-fic-mode)
(add-hook 'ruby-mode-hook 'turn-on-fic-mode)
(add-hook 'web-mode-hook 'turn-on-fic-mode)
(add-hook 'elpy-mode-hook 'turn-on-fic-mode)

(provide 'super-fci-mode)
