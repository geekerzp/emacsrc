;;; elixir

(use-package alchemist
  :ensure t
  :defer t
  :init
  (setq alchemist-hooks-compile-on-save t))

(use-package elixir-mode
  :ensure t
  :defer t
  :init
  (add-hook 'elixir-mode-hook
            (lambda ()
              (alchemist-mode t)
              (rainbow-delimiters-mode t)
              ;; for ruby-end-mode settings
              (set (make-variable-buffer-local 'ruby-end-expand-keywords-before-re)
                   "\\(?:^\\|\\s-+\\)\\(?:do\\)")
              (set (make-variable-buffer-local 'ruby-end-check-statement-modifiers)
                   nil)
              (ruby-end-mode t))))

(provide 'ghost-elixir)
