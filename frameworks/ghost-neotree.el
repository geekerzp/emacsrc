;;; Neotree

(use-package all-the-icons
  :ensure t)

(use-package neotree
  :ensure t
  :init
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  :bind ("s-s" . neotree-toggle))

(provide 'ghost-neotree)
