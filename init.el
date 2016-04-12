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
    ("aae95fc700f9f7ff70efbc294fc7367376aa9456356ae36ec234751040ed9168" "c27cd4c7cc83199b224a7c584d5ebc8bc0b6fee77cf3a83218019eca5f33d214" "d3f7184e46ff9f85d306ca1214945c53c9bd76d7ba0f61d1bdb1a402939bd61c" "c1390663960169cd92f58aad44ba3253227d8f715c026438303c09b9fb66cdfb" "98a619757483dc6614c266107ab6b19d315f93267e535ec89b7af3d62fb83cad" "8577da1641ed4bdf255341ca92e3d0e49c9f4d574458f09ce78159690442cade" "0aa12caf6127772c1a38f7966de8258e7a0651fb6f7220d0bbb3a0232fba967f" "f5eb916f6bd4e743206913e6f28051249de8ccfd070eae47b5bde31ee813d55f" "3fb6b6363aaf145680fff9afcf530713d6ab170faf988cf0860ba2455d37d5dd" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "b9183de9666c3a16a7ffa7faaa8e9941b8d0ab50f9aaba1ca49f2f3aec7e3be9" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" default)))
 '(eclim-eclipse-dirs kitten/eclim-eclipse-dirs)
 '(eclim-executable kitten/eclim-executable)
 '(fci-rule-color "#383838" t)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (scss-mode markdown-mode paper-theme plan9-theme twilight-bright-theme highlight-symbol darktooth-theme dracula-theme material-theme moe-theme zenburn-theme nyan-mode ag yaml-mode minimal-theme tao-theme yasnippet yari web-mode web-beautify volatile-highlights undo-tree sr-speedbar smartrep smart-mode-line sly-company ruby-tools ruby-end rspec-mode robe rbenv rainbow-mode rainbow-delimiters pyenv-mode projectile-rails project-explorer paredit ov operate-on-number move-text magit key-chord json-mode js2-mode irony indent-guide helm-projectile helm-descbinds helm-ag guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck findr fic-mode expand-region exec-path-from-shell emmet-mode elisp-slime-nav easy-kill distinguished-theme discover-my-major dired+ diminish diff-hl company-tern company-anaconda coffee-mode cider browse-kill-ring auto-compile anzu ack-and-a-half ace-window ace-jump-buffer)))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
