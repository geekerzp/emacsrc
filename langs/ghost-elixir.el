;;; elixir

(use-package alchemist
  :ensure t
  :config
  (setq alchemist-hooks-compile-on-save t))

(use-package elixir-mode
  :ensure t
  :init
  (add-hook 'elixir-mode-hook
            (lambda ()
              (ruby-end-mode t)
              (alchemist-mode t)
              (rainbow-delimiters-mode t)))
  :config
  (set (make-variable-buffer-local 'ruby-end-expand-keywords-before-re)
       "\\(?:^\\|\\s-+\\)\\(?:do\\)")
  (set (make-variable-buffer-local 'ruby-end-check-statement-modifiers)
       nil))

(provide 'ghost-elixir)
