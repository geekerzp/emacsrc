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
(setq gc-cons-threshold 10000000)

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(custom-safe-themes
   (quote
    ("31992d4488dba5b28ddb0c16914bf5726dc41588c2b1c1a2fd16516ea92c1d8e" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "77a46326228485699b378a8537f9bc5d6b0d087566ac179bec752fab322d814a" "b81bfd85aed18e4341dbf4d461ed42d75ec78820a60ce86730fc17fc949389b2" "2e973a84accb627f603f309fc13938daa227055d2a6528c80a9b7a9e2dd8da6b" "b378249b7f647796b186c70f61eaaee7aa1bd123681d5ca8c44d3ca8875e1b70" "611e38c2deae6dcda8c5ac9dd903a356c5de5b62477469133c89b2785eb7a14d" "6c35ffc17f8288be4c7866deb7437e8af33cd09930e195738cdfef911ab77274" "77ab33a45a8d39566f24cd6a9b28c78eec89882004ed194587e210399813d009" "aae95fc700f9f7ff70efbc294fc7367376aa9456356ae36ec234751040ed9168" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" default)))
 '(fci-rule-color "#383838")
 '(jdee-db-active-breakpoint-face-colors (cons "#f0f0f0" "#4078f2"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#f0f0f0" "#50a14f"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#f0f0f0" "#9ca0a4"))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-ellipsis "  ")
 '(org-fontify-done-headline t)
 '(org-fontify-quote-and-verse-blocks t)
 '(org-fontify-whole-heading-line t)
 '(package-selected-packages
   (quote
    (eink-theme base16-theme doom-themes zenburn-theme zerodark-theme yari yaml-mode web-mode volatile-highlights use-package undo-tree ujelly-theme tao-theme spacemacs-theme spaceline-all-the-icons solarized-theme smartrep sly-company scss-mode ruby-tools ruby-end rspec-mode robe rjsx-mode realgud rbenv rainbow-mode rainbow-delimiters pyenv-mode paredit ov operate-on-number nord-theme nlinum move-text meghanada markdown-mode key-chord json-mode irony highlight-symbol helm-projectile helm-descbinds helm-ag gruvbox-theme grizzl google-c-style god-mode gitignore-mode gitconfig-mode git-timemachine gist findr fic-mode expand-region exec-path-from-shell ess emmet-mode elisp-slime-nav easy-kill dracula-theme distinguished-theme discover-my-major dired+ diff-hl darktooth-theme company-tern company-anaconda coffee-mode cider browse-kill-ring avy autodisass-java-bytecode auto-compile anzu all-the-icons-dired alchemist ag)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(spaceline-all-the-icons-icon-set-modified (quote toggle))
 '(spaceline-all-the-icons-separator-type (quote cup))
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
(put 'dired-find-alternate-file 'disabled nil)
