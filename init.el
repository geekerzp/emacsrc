;;; ;;;  SUPER EMACS FOR SUPER HACKER ;;;

;;; Code:
(defvar current-user
  (getenv
   (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "SuperEmacs is powering up... Be patient, Master %s!" current-user)

(when (version< emacs-version "24.1")
  (error "SuperEmacs requires at least GNU Emacs 24.1, but you're running %s" emacs-version))

;; Always load newest byte code
(setq load-prefer-newer t)

(defvar root-dir (file-name-directory load-file-name)
  "The root dir of the SuperEmacs.")

(defvar core-dir (expand-file-name "core" root-dir)
  "The home of SuperEmacs's core functionality.")

(defvar modules-dir (expand-file-name "modules" root-dir)
  "This directory houses all of the built-in modules.")

(defvar vendor-dir (expand-file-name "vendor" root-dir)
  "This directory houses packages that are not yet avaiable in ELPA.")

(defvar modules-file (expand-file-name "modules.el" root-dir)
  "This files contains a list of modules that will be loaded by SuperEmacs.")

(defun add-subfolders-to-load-path (parent-dir)
  "Add all level PARENT-DIR subdirs to the `load-path`."
  (dolist (f (directory-files parent-dir))
    (let ((name (expand-file-name f parent-dir)))
      (when (and (file-directory-p name)
                 (not (string-prefix-p "." f)))
        (add-to-list 'load-path name)
        (add-subfolders-to-load-path name)))))

;; add SuperEmacs's directories to `load-path`
(add-to-list 'load-path core-dir)
(add-to-list 'load-path modules-dir)
(add-to-list 'load-path vendor-dir)
(add-subfolders-to-load-path vendor-dir)

;; reduce the frequency of garbage collection by making it happen on
;; each 10MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 10000000)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

(message "Loading core...")

;; the core stuff
(require 'packages)
(require 'custom)
(require 'ui)
(require 'core)
(require 'mode)
(require 'editor)
(require 'global-keybindings)

;; OSX specific settings
(when (eq system-type 'darwin)
  (require 'osx))

(message "Loading SuperEmacs's modules...")

;; the modules
(when (file-exists-p modules-file)
  (load modules-file))

(message "SuperEmacs is ready to do any bidding, Master %s!" current-user)
