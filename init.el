;;; init.el --- Ghost's configurations entry point.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defvar current-user
  (getenv
   (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Ghost Emacs is powering up... Be patient, Master %s!" current-user)

(when (version< emacs-version "25.0")
  (error "Ghost Emacs requires at least GNU Emacs 25.0, but you're running %s" emacs-version))

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

(defvar plugins-dir (expand-file-name "plugins" root-dir))

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
(message "lib done.")
(require 'packages)
(message "packages done.")
(require 'ui)
(message "ui done.")
(require 'core)
(message "core done.")
(require 'editor)
(message "editor done.")
(require 'global-keybindings)
(message "global-keybindings done.")

;; OSX specific settings
(when (eq system-type 'darwin)
  (require 'osx))

;; Load plugins
(message "Loading Plugins...")
(ghost-add-subfolders-to-load-path plugins-dir)

;; Load frameworks
(message "Loading Frameworks...")
(ghost-load-all-in-directory frameworks-dir)

;; Load langs
(message "Loading Langs...")
(ghost-load-all-in-directory langs-dir)

(message "Ghost Emacs is ready to do any bidding, Master %s!" current-user)
(provide 'init)
;;; init.el ends here
