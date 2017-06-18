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
    ("6952b5d43bbd4f1c6727ff61bc9bf5677d385e101433b78ada9c3f0e3787af06" "4cbec5d41c8ca9742e7c31cc13d8d4d5a18bd3a0961c18eb56d69972bbcf3071" "2b6a809384ba9a07cb4ac89f6f5762249e67dd28f024cc54b7d1d996b7e1b65a" "d09925822ad3bd9e0877c5fa95925aafe38650ab4769aff141a5099bc01e09bb" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "e91ca866d6cbb79786e314e0466f4f1b8892b72e77ed702e53bf7565e0dfd469" "555c5a7fa39f8d1538501cc3fdb4fba7562ec4507f1665079021870e0a4c57d8" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "cc691163733781dc874452cd401ce3a04ecdc98fab99631a9142382a3bcb23b4" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "c1fb68aa00235766461c7e31ecfc759aa2dd905899ae6d95097061faeb72f9ee" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "0e0c37ee89f0213ce31205e9ae8bce1f93c9bcd81b1bcda0233061bb02c357a8" "99473228af8c280ed5534952a1a687732c2450d076528c6363ec23febccccd7b" "aae95fc700f9f7ff70efbc294fc7367376aa9456356ae36ec234751040ed9168" "d29231b2550e0d30b7d0d7fc54a7fb2aa7f47d1b110ee625c1a56b30fea3be0f" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "2cf7f9d1d8e4d735ba53facdc3c6f3271086b6906c4165b12e4fd8e3865469a6" "ed763cdf0b7c523cdc094ba137080e7f2c4e7a28303e0cbeb0eda159f964f1b6" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "c9321e2db48a21fc656a907e97ee85d8cd86967855bf0bed3998bcf9195c758b" "39fe48be738ea23b0295cdf17c99054bb439a7d830248d7e6493c2110bfed6f8" "6c35ffc17f8288be4c7866deb7437e8af33cd09930e195738cdfef911ab77274" "3e8ea6a37f17fd9e0828dee76b7ba709319c4d93b7b21742684fadd918e8aca3" "086970da368bb95e42fd4ddac3149e84ce5f165e90dfc6ce6baceae30cf581ef" "deaf0dad46995bc682dd0acf1f0327cab82f1cf0025755ebb1bab714d0a6e8d3" "a0dc0c1805398db495ecda1994c744ad1a91a9455f2a17b59b716f72d3585dde" "e92092fdc97ce554111946bc0ec7d9ee3e5ac799c3b34a2a5e1483e9de48ac9a" default)))
 '(livedown-autostart nil)
 '(livedown-browser nil)
 '(livedown-open t)
 '(livedown-port 1337)
 '(package-selected-packages
   (quote
    (realgud google-c-style autodisass-java-bytecode moe-theme darktooth-theme nubox ujelly-theme spacemacs-theme doom-themes zenburn-theme zerodark-theme nlinum ess neotree nord-theme markdown-mode highlight-indent-guides yari yaml-mode web-mode web-beautify volatile-highlights undo-tree typescript-mode tao-theme spaceline-all-the-icons smartrep sly-company slim-mode scss-mode ruby-tools ruby-end rspec-mode robe rjsx-mode rbenv rainbow-mode rainbow-delimiters pyenv-mode paredit ov operate-on-number move-text meghanada magit key-chord json-mode irony highlight-symbol helm-projectile helm-descbinds helm-ag grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist findr fic-mode expand-region exec-path-from-shell emmet-mode elisp-slime-nav easy-kill discover-my-major dired+ diminish diff-hl csv-mode company-tern company-anaconda coffee-mode cider browse-kill-ring avy auto-compile anzu alchemist ag)))
 '(spaceline-all-the-icons-icon-set-modified (quote toggle))
 '(spaceline-all-the-icons-separator-type (quote cup)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
