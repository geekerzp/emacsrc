;;; Projectile

(use-package projectile
  :ensure t

  :init
  (setq projectile-enable-caching t)
  (setq projectile-completion-system 'helm)
  (projectile-global-mode)

  :config
  (use-package helm-projectile
    :ensure t
    :init
    (helm-projectile-on)))

(provide 'ghost-projectile)
