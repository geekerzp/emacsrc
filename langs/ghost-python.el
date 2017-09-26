;;; python

(use-package pyenv-mode
  :ensure t
  :init
  (add-hook 'python-mode-hook
            (lambda () (pyenv-mode t))))

(use-package anaconda-mode
  :ensure t
  :init
  (add-hook 'python-mode-hook
            (lambda ()
              (anaconda-mode t)
              (anaconda-eldoc-mode t))))

(setq python-indent-offset 2)

(provide 'ghost-python)
