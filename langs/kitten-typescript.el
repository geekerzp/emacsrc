;; TypeScript --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(tide))

(setq typescript-indent-level 2)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

;; format options
(setq tide-format-options '(:insertSpaceAfterFunctionKeywordForAnonymousFunctions
                            t
                            :placeOpenBraceOnNewLineForFunctions
                            nil))
;; see https://github.com/Microsoft/TypeScript/blob/cc58e2d7eb144f0b2ff89e6a6685fb4deaa24fde/src/server/
;;   protocol.d.ts#L421-473 for the full list available options

(defun kitten/typescript-mode-hook ()
  "Hooks for TypeScript"
  (setup-tide-mode)
  (rainbow-delimiters-mode 1))

(add-hook 'typescript-mode-hook 'kitten/typescript-mode-hook)
