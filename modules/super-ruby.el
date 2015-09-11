;;; super-ruby --- Ruby mode config
;;; Commentary:

(require 'ruby-end)
(add-hook 'ruby-mode-hook (lambda () (ruby-end-mode t)))
(add-hook 'ruby-mode-hook (lambda () (rspec-mode t)))

;;; Code:
(provide 'super-ruby)
;;; super-ruby.el ends here
