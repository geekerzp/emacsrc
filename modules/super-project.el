;; Code:

(require 'grizzl)
 (projectile-global-mode)
 (setq projectile-enable-caching t)
 (setq projectile-completion-system 'grizzl)
;; Using Projectile everywhere
;;(setq projectile-require-project-root nil)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(setq projectile-indexing-method 'native)

(provide 'super-project)
