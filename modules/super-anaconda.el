;;; super-anaconda --- anaconda-mode config file
;;; Commentary:

;;; Code:
(require 'python)

(pyenv-mode)

(add-hook 'python-mode-hook 'anaconda-mode)

(provide 'super-anaconda)
;;; super-anaconda.el ends here
