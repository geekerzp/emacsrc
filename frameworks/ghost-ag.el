;;; Ag

;;; Code:
(ghost-require-packages '(ag))

(require 'ag)

;; ;; keybindings
(global-set-key (kbd "C-c s") 'ag)

(provide 'ghost-ag)
