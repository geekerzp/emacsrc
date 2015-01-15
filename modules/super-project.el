;; Code:

(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(helm-projectile-on)

;; anaconda integration
(when (projectile-project-p)
  (setenv "PYTHONPATH" (projectile-project-root)))


(provide 'super-project)
