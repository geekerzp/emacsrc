;;; init.el --- Kitten's configurations entry point.

;;; Commentary:

;;; Code:
(defvar current-user
  (getenv
   (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Kitten Emacs is powering up... Be patient, Master %s!" current-user)

(when (version< emacs-version "24.1")
  (error "Kitten Emacs requires at least GNU Emacs 24.1, but you're running %s" emacs-version))

;; Always load newest byte code
(setq load-prefer-newer t)

(defvar root-dir (file-name-directory load-file-name))

(defvar savefile-dir (expand-file-name "savefile" root-dir))
(unless (file-exists-p savefile-dir)
  (make-directory savefile-dir))

(defvar core-dir (expand-file-name "core" root-dir))
(add-to-list 'load-path core-dir)

(defvar frameworks-dir (expand-file-name "frameworks" root-dir))
(add-to-list 'load-path frameworks-dir)

(defvar langs-dir (expand-file-name "langs" root-dir))
(add-to-list 'load-path langs-dir)

;; Load core
(message "Loading core...")
;; the core stuff
(require 'lib)
(require 'packages)
(require 'ui)
(require 'core)
(require 'editor)
(require 'global-keybindings)

;; OSX specific settings
(when (eq system-type 'darwin)
  (require 'osx))

;; Load frameworks
(message "Loading Frameworks...")
(kitten/load-all-in-directory frameworks-dir)

;; Load langs
(message "Loading Langs...")
(kitten/load-all-in-directory langs-dir)

(message "Kitten Emacs is ready to do any bidding, Master %s!" current-user)
(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(custom-safe-themes
   (quote
    ("97f9438943105a17eeca9f1a1c4c946765e364957749e83047d6ee337b5c0a73" "8fe17db3ffa7b3d18cbe0989eb3b08a0f24326256dc4472a5f443d7565c7d7cb" "11636897679ca534f0dec6f5e3cb12f28bf217a527755f6b9e744bd240ed47e1" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(eclim-eclipse-dirs kitten/eclim-eclipse-dirs)
 '(eclim-executable kitten/eclim-executable))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
