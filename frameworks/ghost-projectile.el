;;; Projectile

(ghost-require-packages '(projectile))

(require 'projectile)

(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)

(defun ghost-projectile-mode-hook ()
  "Hooks for Projectile."
  (helm-projectile-on))

(add-hook 'projectile-mode-hook 'ghost-projectile-mode-hook)

(projectile-global-mode)

(provide 'ghost-projectile)
