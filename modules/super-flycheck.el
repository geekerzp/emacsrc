;;; super-flycheck --- flycheck config

;;; Commentary:

;;; Code:
(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

;; checker for python mode
(add-hook 'python-mode-hook
          #'(lambda ()
              (flycheck-select-checker 'python-flake8)))

;; checker for ruby code
(add-hook 'ruby-mode-hook
          #'(lambda ()
              (flycheck-select-checker 'rubocop)))

(provide 'super-flycheck)
;;; super-flycheck ends here
