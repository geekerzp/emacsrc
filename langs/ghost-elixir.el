;;; elixir

(ghost-require-packages '(elixir-mode alchemist))

(setq alchemist-hooks-compile-on-save t)

(defun auto-activate-ruby-end-mode-for-elixir-mode ()
  (set (make-variable-buffer-local 'ruby-end-expand-keywords-before-re)
       "\\(?:^\\|\\s-+\\)\\(?:do\\)")
  (set (make-variable-buffer-local 'ruby-end-check-statement-modifiers) nil)
  (ruby-end-mode +1))

(defun auto-activate-alchemist-mode-for-elixir-mode ()
  (alchemist-mode +1))

(defun auto-activate-rainbow-delimiters-mode ()
  (rainbow-delimiters-mode 1))

(add-hook 'elixir-mode-hook 'auto-activate-ruby-end-mode-for-elixir-mode)
(add-hook 'elixir-mode-hook 'auto-activate-alchemist-mode-for-elixir-mode)
(add-hook 'elixir-mode-hook 'auto-activate-rainbow-delimiters-mode)

(provide 'ghost-elixir)
