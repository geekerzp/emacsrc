;;; super-avy --- Avy mode config
;;; Commentary:

;;; Code:

(require 'avy)
(avy-setup-default)

;; avy-goto-char
;; Input one char, jump to it with a tree.
(global-set-key (kbd "C-'") 'avy-goto-char)
;; avy-goto-char-2
;; Input two consecutive chars, jump to the first one with a tree.
(global-set-key (kbd "C-\"") 'avy-goto-char-2)
;; avy-goto-line
;; Input zero chars, jump to a line start with a tree.
(global-set-key (kbd "M-g f") 'avy-goto-line)
;; avy-goto-word-1
;; Input one char at word start, jump to a word start with a tree.
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
;; avy-goto-word-0
;; Input zero chars, jump to a word start with a tree.
(global-set-key (kbd "M-g e") 'avy-goto-word-0)

(provide 'super-avy)
;;; super-avy.el ends here
