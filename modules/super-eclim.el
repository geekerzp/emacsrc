(require 'eclim)
(require 'eclimd)

;; Eclipse installation
(custom-set-variables
  '(eclim-eclipse-dirs '("/opt/homebrew-cask/Caskroom/eclipse-java/4.5/Eclipse.app/Contents/Eclipse"))
  '(eclim-executable "/opt/homebrew-cask/Caskroom/eclipse-java/4.5/Eclipse.app/Contents/Eclipse/eclim"))

;; Displaying compilation error messages in the echo area
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

(global-eclim-mode)

(provide 'super-eclim)
;;; super-eclim.el ends here
