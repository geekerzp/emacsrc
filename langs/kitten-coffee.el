;;; coffeescript --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(coffee-mode tern))

(require 'coffee-mode)

(defun kitten/coffee-compile-buffer ()
  "Update the already compiled js on save."
  (and (buffer-file-name)
       (file-exists-p (buffer-file-name))
       (file-exists-p (coffee-compiled-file-name (buffer-file-name)))
       (coffee-cos-mode t)))

(defun kitten/coffee-mode-hook ()
  "Hooks for coffee mode."
  ;; CoffeeScript uses two spaces.
  (setq coffee-tab-width 2)
  (kitten/coffee-compile-buffer)
  (subword-mode 1)
  (tern-mode 1))

(add-hook 'coffee-mode-hook 'kitten/coffee-mode-hook)

(provide 'kitten-coffee)
;;; kitten-coffee.el ends here
