;;; super-ruby --- Ruby mode config
;;; Commentary:

(require 'ruby-end)
(require 'rbenv)

(add-hook 'ruby-mode-hook
          (lambda ()
            (ruby-end-mode)
            (rspec-mode)))

(add-hook 'enh-ruby-mode-hook
          (lambda ()
            (global-rbenv-mode)))

;;; Code:
(provide 'super-ruby)
;;; super-ruby.el ends here
