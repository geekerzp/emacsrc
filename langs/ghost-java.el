;;; Java

(ghost-require-packages '(meghanada))

(require 'meghanada)

(defun ghost-java-mode-hook ()
  (meghanada-mode t)
  (rainbow-delimiters-mode t)
  (setq c-basic-offset 2)
  (add-hook 'before-save-hook 'meghanada-code-beautify-before-save))

(add-hook 'java-mode-hook 'ghost-java-mode-hook)

(provide 'ghost-java)
