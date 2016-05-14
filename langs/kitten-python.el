;;; python --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(anaconda-mode pyenv-mode))

(require 'pyenv-mode)
(require 'anaconda-mode)

(defun kitten/python-mode-hook ()
  "Hooks for Python mode."
  (pyenv-mode 1)
  (anaconda-mode 1)
  (rainbow-delimiters-mode 1))

(add-hook 'python-mode-hook 'kitten/python-mode-hook)

(provide 'kitten-python)
;;; kitten-python.el ends here
