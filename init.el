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
    ("e8a976fbc7710b60b069f27f5b2f1e216ec8d228fe5091f677717d6375d2669f" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "fe1682ca8f7a255cf295e76b0361438a21bb657d8846a05d9904872aa2fb86f2" "b9183de9666c3a16a7ffa7faaa8e9941b8d0ab50f9aaba1ca49f2f3aec7e3be9" default)))
 '(package-selected-packages
   (quote
    (floobits jsx-mode nav project-explorer neotree mode-icons smooth-scrolling markdown-mode material-theme slim-mode yari yaml-mode web-mode web-beautify volatile-highlights undo-tree twilight-bright-theme tao-theme sr-speedbar smartrep smart-mode-line sly-company scss-mode ruby-tools ruby-end rspec-mode robe react-snippets rbenv rainbow-mode rainbow-delimiters pyenv-mode projectile-rails plan9-theme paredit paper-theme ov operate-on-number nyan-mode move-text magit key-chord json-mode js2-mode irony indent-guide highlight-symbol helm-projectile helm-descbinds helm-ag grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck findr fic-mode expand-region exec-path-from-shell emmet-mode elisp-slime-nav easy-kill dracula-theme distinguished-theme discover-my-major dired+ diminish diff-hl darktooth-theme company-tern company-anaconda coffee-mode cider browse-kill-ring auto-compile anzu ag ace-window ace-jump-buffer))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
