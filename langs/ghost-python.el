;;; python

(ghost-require-packages '(anaconda-mode pyenv-mode))

(require 'pyenv-mode)
(require 'anaconda-mode)

(defun ghost-python-mode-hook ()
  "Hooks for Python mode."
  (pyenv-mode 1)
  (anaconda-mode 1)
  (rainbow-delimiters-mode 1))

(add-hook 'python-mode-hook 'ghost-python-mode-hook)

(provide 'ghost-python)
