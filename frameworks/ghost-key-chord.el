;;; Key-chord

(ghost-require-packages '(key-chord))

(require 'key-chord)

;; Press <jj> quickly to jump to the beginning of a visible word.
;; Press <jl> quickly to jump to a visible line.
;; Press <jk> quickly to jump to a visible character.
;; Press <JJ> quickly to switch to previous buffer.
;; Press <uu> quickly to visualize the undo tree.
;; Press <xx> quickly to execute extended command.
;; Press <yy> quickly to browse the kill ring.
(key-chord-define-global "jj" 'avy-goto-word-1)
(key-chord-define-global "jl" 'avy-goto-line)
(key-chord-define-global "jk" 'avy-goto-char)
(key-chord-define-global "JJ" 'ghost-switch-to-previous-buffer)
(key-chord-define-global "uu" 'undo-tree-visualize)
(key-chord-define-global "xx" 'execute-extended-command)
(key-chord-define-global "yy" 'browse-kill-ring)

(key-chord-mode 1)

(provide 'ghost-key-chord)
