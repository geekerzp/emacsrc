;;; gloabl-keybindings --- gloabl keybindings
;;; Commentary:

;;; Code:

(global-set-key (kbd "M-.") 'find-tag)
(global-set-key (kbd "M-*") 'pop-tag-mark)

;; make ibuffer as default
(defalias 'list-buffers 'ibuffer)

;; easy-kill && easy-mark
(global-set-key [remap kill-ring-save] 'easy-kill)
(global-set-key [remap mark-sexp] 'easy-mark)

;; for hhkb
(define-key key-translation-map (kbd "M-¥") (kbd "\\"))

;; kill whole line
(global-set-key (kbd "M-9") 'kill-whole-line)

(provide 'global-keybindings)

;;; global-keybindings.el ends here
