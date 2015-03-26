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
;;(setq gc-cons-threshold 10000000)

;; warn when opening files bigger than 100MB
;;(setq large-file-warning-threshold 100000000)

(message "Loading core...")

;; the core stuff
(require 'packages)
(require 'custom)
(require 'ui)
(require 'core)
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
(put 'set-goal-column 'disabled nil)
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
    ("e80932ca56b0f109f8545576531d3fc79487ca35a9a9693b62bf30d6d08c9aaf" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "cd540cb356cb169fa1493791bd4cbb183c5ad1c672b8d1be7b23e5e8c8178991" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "024b0033a950d6a40bbbf2b1604075e6c457d40de0b52debe3ae994f88c09a4a" "c87cc60d01cf755375759d165c1d60d9586c6a31f0b5437a0378c2a93cfc8407" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
