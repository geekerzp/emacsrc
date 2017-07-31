;;; ESS

(use-package ess
  :ensure t
  :config
  (setq inferior-julia-program-name "/usr/local/bin/julia"))

(provide 'ghost-ess)
