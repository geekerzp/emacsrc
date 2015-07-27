;;; Code:

;; make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil)

;; set default tab char's display width to 2 spaces
(setq-default tab-width 2)

;; Newline at end of file
(setq require-final-newline t)

;; Delete the selection with a keypress
(delete-selection-mode t)

;; switch windows using shift{up, down, left, right}
(windmove-default-keybindings)

;; when cursor is on edge, move to the other side, as in toroidal space
(setq windmove-wrap-around t)

;; trim the "\n" in the end of a line
(setq-default kill-whole-line t)

;; clipboard
;; for ubuntu
;;(setq x-select-enable-clipboard t)

;; turn on automatic bracket insertion by pairs. New in emacs 24
(electric-pair-mode 1)

;; make electric-pair-mode work on more brackets
(setq electric-pair-pairs '(
                            (?\" . ?\")
                            (?\{ . ?\})
                            ) )

;; makes C-n insert newlines if the point is at the end of the buffer
(setq next-line-add-newlines t)

(provide 'editor)
