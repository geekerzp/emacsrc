;;; Projectile --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(projectile))

(require 'projectile)

(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)

(projectile-rails-global-mode)

(defun kitten/projectile-mode-hook ()
  "Hooks for Projectile."
  (helm-projectile-on))

(add-hook 'projectile-mode-hook 'kitten/projectile-mode-hook)

(projectile-global-mode)

(provide 'kitten-projectile)
;;; kitten-projectile.el ends here
