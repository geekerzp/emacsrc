;;; Key-chord

(use-package key-chord
  :ensure t
  :init
  ;; Press <jj> quickly to jump to the beginning of a visible word.
  (key-chord-define-global "jj" 'avy-goto-word-1)
  ;; Press <jl> quickly to jump to a visible line.
  (key-chord-define-global "jl" 'avy-goto-line)
  ;; Press <jk> quickly to jump to a visible character.
  (key-chord-define-global "jk" 'avy-goto-char)
  ;; Press <JJ> quickly to switch to previous buffer.
  (key-chord-define-global "JJ" 'ghost-switch-to-previous-buffer)
  ;; Press <uu> quickly to visualize the undo tree.
  (key-chord-define-global "uu" 'undo-tree-visualize)
  ;; Press <xx> quickly to execute extended command.
  (key-chord-define-global "xx" 'execute-extended-command)
  ;; Press <yy> quickly to browse the kill ring.
  (key-chord-define-global "yy" 'browse-kill-ring)

  (key-chord-mode t))

(provide 'ghost-key-chord)
