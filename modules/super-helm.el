(require 'helm-config)
(helm-mode 1)

;; To enable fuzzy matching for both Semantic and Imenu listing
(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match    t)

(provide 'super-helm)
