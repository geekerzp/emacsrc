;; Code:

(require 'grizzl)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
;;(setq projectile-indexing-method 'native)

(provide 'super-project)
