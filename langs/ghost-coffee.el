;;; coffeescript

(ghost-require-packages '(coffee-mode tern))

(require 'coffee-mode)

(defun ghost-coffee-compile-buffer ()
  "Update the already compiled js on save."
  (and (buffer-file-name)
       (file-exists-p (buffer-file-name))
       (file-exists-p (coffee-compiled-file-name (buffer-file-name)))
       (coffee-cos-mode t)))

(defun ghost-coffee-mode-hook ()
  "Hooks for coffee mode."
  ;; CoffeeScript uses two spaces.
  (setq coffee-tab-width 2)
  (ghost-coffee-compile-buffer)
  (subword-mode 1)
  (tern-mode 1))

(add-hook 'coffee-mode-hook 'ghost-coffee-mode-hook)

(provide 'ghost-coffee)
