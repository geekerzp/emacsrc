;;; Company

(use-package company-anaconda
  :ensure t
  :defer t)

(use-package robe
  :ensure t
  :defer t)

(use-package sly-company
  :ensure t
  :defer t)

(use-package company-tern
  :ensure t
  :defer t)

(use-package company
  :ensure t
  :defer t

  :bind
  ("C-c /" . company-files)

  :config
  (add-to-list 'company-backends 'company-robe)
  (add-to-list 'company-backends 'company-anaconda)
  (add-to-list 'company-backends 'company-tern)
  ;; bigger popup window
  (setq company-tooltip-limit 10)
  ;; align annotations to the right tooltip border
  (setq company-tooltip-align-annotations 't)
  ;; decrease delay before autocompletion popup shows
  (setq company-idle-delay .3)
  (setq company-minimum-prefix-length 2)
  (setq company-tooltip-flip-when-above t))

(global-company-mode t)

(provide 'ghost-company)
