;;; Projectile --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(projectile projectile-rails))

(require 'projectile)
(require 'projectile-rails)

(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)

(defun kitten/projectile-mode-hook ()
  "Hooks for Projectile."
  (projectile-rails-on)
  (helm-projectile-on))

(add-hook 'projectile-mode-hook #'kitten/projectile-mode-hook)

;; Enable Projectile globally
(projectile-global-mode)

(provide 'kitten-projectile)
;;; kitten-projectile.el ends here
