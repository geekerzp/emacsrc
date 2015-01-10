;;; Code:

(global-set-key (kbd "<f11>") 'xah-previous-user-buffer)
(global-set-key (kbd "<f12>") 'xah-next-user-buffer)
(global-set-key (kbd "<S-f11>") 'xah-previous-emacs-buffer)
(global-set-key (kbd "<S-f12>") 'xah-next-emacs-buffer)
(global-set-key (kbd "C-c r s") 'robe-start)
(global-set-key (kbd "C-c r r") 'inf-ruby)

;; Press Command-p for fuzzy find in project
(global-set-key (kbd "s-f") 'projectile-find-file)

;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

(global-set-key (kbd "C-c a") 'ack)
(global-set-key (kbd "s-s") 'project-explorer-open)
(global-set-key (kbd "M-l") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "M-p") 'evilnc-comment-or-uncomment-paragraphs)

;; easy-kill && easy-mark
(global-set-key [remap kill-ring-save] 'easy-kill)
(global-set-key [remap mark-sexp] 'easy-mark)


(provide 'global-keybindings)
