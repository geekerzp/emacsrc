;;; java --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(emacs-eclim))

(require 'eclim)
(require 'eclimd)

(defvar kitten/eclim-eclipse-dirs
  '("/opt/homebrew-cask/Caskroom/eclipse-java/4.5/Eclipse.app/Contents/Eclipse"))

(defvar kitten/eclim-executable
  "/opt/homebrew-cask/Caskroom/eclipse-java/4.5/Eclipse.app/Contents/Eclipse/eclim")

;; Eclipse installation
(custom-set-variables
  '(eclim-eclipse-dirs kitten/eclim-eclipse-dirs)
  '(eclim-executable   kitten/eclim-executable))

;; Displaying compilation error messages in the echo area
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

(global-eclim-mode)

(defun kitten/java-mode-hook ()
  "Hooks for java mode."
  (rainbow-delimiters-mode 1))

(add-hook 'java-mode-hook 'kitten/java-mode-hook)

(provide 'kitten-java)
;;; kitten-java.el ends here
