;;; Neotree

(ghost-require-packages '(neotree all-the-icons))

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(global-set-key (kbd "s-s") 'neotree-toggle)

(provide 'ghost-neotree)
