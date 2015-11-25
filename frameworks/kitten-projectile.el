;;; Projectile --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(projectile projectile-rails))

(require 'projectile)
(require 'project-explorer)

;; keybindings
(setq projectile-enable-caching t)
(setq projectile-indexing-method 'native)
(setq projectile-completion-system 'helm)

;; anaconda integration
(when (projectile-project-p)
  (setenv "PYTHONPATH" (projectile-project-root)))

(add-hook 'projectile-mode-hook 'projectile-rails-on)

(helm-projectile-on)

;; Enable Projectile globally
(projectile-global-mode)

(provide 'kitten-projectile)
;;; kitten-projectile.el ends here
