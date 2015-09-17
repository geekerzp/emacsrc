;;; gloabl-keybindings --- gloabl keybindings
;;; Commentary:

;;; Code:

(global-set-key (kbd "M-.") 'find-tag)
(global-set-key (kbd "M-*") 'pop-tag-mark)

;; make ibuffer as default
(defalias 'list-buffers 'ibuffer)

;; ack-and-a-half
(global-set-key (kbd "C-c a") 'ack)

;; speedbar
(global-set-key (kbd "s-s") 'project-explorer-toggle)

(global-set-key (kbd "M-l") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "M-p") 'evilnc-comment-or-uncomment-paragraphs)

;; easy-kill && easy-mark
(global-set-key [remap kill-ring-save] 'easy-kill)
(global-set-key [remap mark-sexp] 'easy-mark)

;; heml keybindings
(global-set-key (kbd "M-x") 'helm-M-x)

;; for hhkb
(define-key key-translation-map (kbd "M-¥") (kbd "\\"))

;; slime keybindings
(defun slime-repl-mode-custom-key ()
  "Modify slime's keymap."
  (progn
    (require 'slime-repl)
    (define-key slime-repl-mode-map (kbd "<down>") 'slime-repl-forward-input)
    (define-key slime-repl-mode-map (kbd "<up>") 'slime-repl-backward-input)))

(add-hook 'slime-repl-mode-hook 'slime-repl-mode-custom-key)

;; kill whole line
(global-set-key (kbd "M-9") 'kill-whole-line)

;; company-mode
(global-set-key (kbd "C-c /") 'company-files)

(provide 'global-keybindings)

;;; global-keybindings.el ends here
