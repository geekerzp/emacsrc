;;; Code:

(setq-default indent-tabs-mode nil)    ;; don't use tabs to indent
(setq-default tab-width 2)

;; Newline at end of file
(setq require-final-newline t)

;; Delete the selection with a keypress
(delete-selection-mode t)

;; switch windows using shift{up, down, left, right}
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;; trim the "\n" in the end of a line
(setq-default kill-whole-line t)

;; clipboard
;; for ubuntu
;;(setq x-select-enable-clipboard t)

(provide 'editor)
