;;; Ag --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(ag))

(require 'ag)

;; ;; keybindings
(global-set-key (kbd "C-c a") 'ag)

(provide 'kitten-ag)
;;; kitten-ag.el ends here
