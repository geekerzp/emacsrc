;;; Projectile --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(projectile project-explorer projectile-rails))

(require 'projectile)
(require 'project-explorer)

;; keybindings
(global-set-key (kbd "s-s") 'project-explorer-toggle)

(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)

;; anaconda integration
(when (projectile-project-p)
  (setenv "PYTHONPATH" (projectile-project-root)))

(add-hook 'projectile-mode-hook 'projectile-rails-on)

(helm-projectile-on)

;; Enable Projectile globally
(projectile-global-mode)

;; project-explorer
(setq pe/width 20)

(provide 'kitten-projectile)
;;; kitten-projectile.el ends here
