;;; Code:

(require 'cl)
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa"     . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("elpy"      . "http://jorgenschaefer.github.io/packages/"))
(add-to-list 'package-archives
             '("SC"        . "http://joseito.republika.pl/sunrise-commander/"))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
;; set package-user-dir to be relative to root path
(setq package-user-dir (expand-file-name "elpa" root-dir))
(package-initialize)

(defvar super-packages
  '(ace-jump-mode
    ace-jump-buffer
    ace-window
    ack-and-a-half
    anzu
    anaconda-mode
    company-anaconda
    browse-kill-ring
    company-c-headers
    dash
    discover-my-major
    diff-hl
    diminish
    easy-kill
    elisp-slime-nav
    epl
    emmet-mode
    expand-region
    flycheck
    fic-mode
    gist
    git-timemachine
    gitconfig-mode
    gitignore-mode
    god-mode
    grizzl
    guru-mode
    helm
    helm-projectile
    inf-ruby
    ido
    irony
    js3-mode
    ov
    project
    project-explorer
    projectile
    projectile-rails
    magit
    move-text
    malabar-mode
    operate-on-number
    rainbow-mode
    robe
    rbenv
    rspec-mode
    smartrep
    slime
    slime-company
    sly
    sly-company
    paren
    undo-tree
    volatile-highlights
    web-mode
    web-beautify
    yasnippet
    distinguished-theme
    jazz-theme)
  "A list of packages to ensure are installed at launch.")

(defun super-packages-installed-p ()
  "Check if all packages in `super-packages' are installed."
  (every #'package-installed-p super-packages))

(defun super-require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package super-packages)
    (add-to-list 'super-packages package))
  (unless (package-installed-p package)
    (package-install package)))

(defun super-require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automaticly."
  (mapc #'super-require-package packages))

(define-obsolete-function-alias 'super-ensure-module-deps 'super-require-packages)

(defun super-install-packages ()
  "Install all packages listed in `super-packages'."
  (unless (super-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "SuperEmacs is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages.
    (super-require-packages super-packages)))

;; run package installation.
(super-install-packages)

(defun super-list-foregin-packages ()
  "Browse third-party packages not bundled with SuperEmacs.

Behaves similarly to `package-list-packages', but shows only the packages that
are installed and not in `super-packages'.
Useful for removing unwanted packages."
  (interactive)
  (package-show-package-list
   (set-difference package-activated-list super-packages)))

(defmacro super-auto-install (extension package mode)
  "When file with EXTENSION is opened triggers auto-install of PACKAGE.
PACKAGE is installed only if not already present. The file is opened in MODE."
  `(add-to-list 'auto-mode-alist
                `(,extension . (lambda ()
                                 (unless (package-installed-p ',package)
                                   (package-install ',package))
                                 (,mode)))))

(defvar super-auto-install-alist
  '(("\\.clj\\'" clojure-mode clojure-mode)
    ("\\.coffee\\'" coffee-mode coffee-mode)
    ("\\.css\\'" css-mode css-mode)
    ("\\.csv\\'" csv-mode csv-mode)
    ("\\.d\\'" d-mode d-mode)
    ("\\.dart\\'" dart-mode dart-mode)
    ("\\.ex\\'" elixir-mode elixir-mode)
    ("\\.exs\\'" elixir-mode elixir-mode)
    ("\\.elixir\\'" elixir-mode elixir-mode)
    ("\\.erl\\'" erlang erlang-mode)
    ("\\.feature\\'" feature-mode feature-mode)
    ("\\.go\\'" go-mode go-mode)
    ("\\.groovy\\'" groovy-mode groovy-mode)
    ("\\.haml\\'" haml-mode haml-mode)
    ("\\.hs\\'" haskell-mode haskell-mode)
    ("\\.kv\\'" kivy-mode kivy-mode)
    ("\\.latex\\'" auctex LaTeX-mode)
    ("\\.less\\'" less-css-mode less-css-mode)
    ("\\.lua\\'" lua-mode lua-mode)
    ("\\.markdown\\'" markdown-mode markdown-mode)
    ("\\.md\\'" markdown-mode markdown-mode)
    ("\\.ml\\'" tuareg tuareg-mode)
    ("\\.pp\\'" puppet-mode puppet-mode)
    ("\\.php\\'" php-mode php-mode)
    ("PKGBUILD\\'" pkgbuild-mode pkgbuild-mode)
    ("\\.rs\\'" rust-mode rust-mode)
    ("\\.rb\\'" ruby-mode ruby-mode)
    ("\\.sass\\'" sass-mode sass-mode)
    ("\\.scala\\'" scala-mode2 scala-mode)
    ("\\.scss\\'" scss-mode scss-mode)
    ("\\.slim\\'" slim-mode slim-mode)
    ("\\.swift\\'" swift-mode swift-mode)
    ("\\.textile\\'" textile-mode textile-mode)
    ("\\.thrift\\'" thrift thrift-mode)
    ("\\.yml\\'" yaml-mode yaml-mode)
    ("\\.yaml\\'" yaml-mode yaml-mode)
    ("Dockerfile\\'" dockerfile-mode dockerfile-mode)))

;; markdown-mode doesn't have autoloads for the auto-mode-alist
;; so we add them manually if it's already installed
(when (package-installed-p 'markdown-mode)
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode)))

(when (package-installed-p 'pkgbuild-mode)
  (add-to-list 'auto-mode-alist '("PKGBUILD\\'" . pkgbuild-mode)))

;; build auto-install mappings
(mapc
 (lambda (entry)
   (let ((extension (car entry))
         (package (cadr entry))
         (mode (cadr (cdr entry))))
     (unless (package-installed-p package)
       (super-auto-install extension package mode))))
 super-auto-install-alist)

(provide 'packages)
