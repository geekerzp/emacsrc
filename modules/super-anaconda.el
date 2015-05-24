;;; super-anaconda --- anaconda-mode config file
;;; Commentary:

;;; Code:
(require 'python)

(add-hook 'python-mode-hook 'anaconda-mode)

(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))

(provide 'super-anaconda)
;;; super-anaconda.el ends here
