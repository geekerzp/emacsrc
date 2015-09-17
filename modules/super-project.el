;;; super-projectile --- Projectile configurations
;;; Commentary:

;;; Code:

(require 'project-explorer)
(require 'projectile)

;; Enable Projectile globally
(projectile-global-mode)

(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(helm-projectile-on)

;; anaconda integration
(when (projectile-project-p)
  (setenv "PYTHONPATH" (projectile-project-root)))

;; project-explorer
(setq pe/width 20)

(provide 'super-project)
;;; super-project.el ends here
