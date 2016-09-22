;;; init.el --- Kitten's configurations entry point.

;;; Commentary:

;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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

;; GC
;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

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
    ("0f92b9f1d391caf540ac746bc251ea00a55f29e20a411460eb6d8e49892ddef9" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "b0ab5c9172ea02fba36b974bbd93bc26e9d26f379c9a29b84903c666a5fde837" default)))
 '(package-selected-packages
   (quote
    (leuven-theme help-fns+ zenburn-theme yari yaml-mode web-mode web-beautify volatile-highlights undo-tree twilight-bright-theme tide tao-theme sr-speedbar smooth-scrolling smartrep smart-mode-line sly-company slim-mode scss-mode ruby-tools ruby-end rspec-mode robe react-snippets rbenv rainbow-mode rainbow-delimiters pyenv-mode projectile-rails project-explorer plan9-theme paredit paper-theme ov operate-on-number nyan-mode neotree nav move-text mode-icons material-theme markdown-mode magit key-chord json-mode js2-mode jazz-theme irony indent-guide highlight-symbol helm-projectile helm-descbinds helm-ag grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist floobits findr fic-mode expand-region exec-path-from-shell emmet-mode elisp-slime-nav easy-kill dracula-theme distinguished-theme discover-my-major dired+ diminish diff-hl darktooth-theme company-tern company-anaconda coffee-mode cider browse-kill-ring auto-compile anzu ag ace-window ace-jump-buffer))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
