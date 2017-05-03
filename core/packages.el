;;; packages.el

;;; Code:
(require 'cl)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("elpy"      . "http://jorgenschaefer.github.io/packages/"))
(add-to-list 'package-archives
             '("SC"        . "http://joseito.republika.pl/sunrise-commander/"))

;; set package-user-dir to be relative to root path
(setq package-user-dir (expand-file-name "elpa" root-dir))
(package-initialize)

(defvar ghost-packages
  '(auto-compile
    avy
    anzu
    browse-kill-ring
    dired+
    dash-functional
    discover-my-major
    diff-hl
    easy-kill
    elisp-slime-nav
    epl
    expand-region
    fic-mode
    findr
    gist
    git-timemachine
    gitconfig-mode
    gitignore-mode
    god-mode
    grizzl
    highlight-symbol
    highlight-indent-guides
    ido
    irony
    magit
    move-text
    ov
    operate-on-number
    paredit
    rainbow-mode
    rainbow-delimiters
    smartrep
    paren
    undo-tree
    volatile-highlights
    distinguished-theme)
  "A list of packages to ensure are installed at launch.")

(defun ghost-packages-installed-p ()
  "Check if all packages in `ghost-packages' are installed."
  (every #'package-installed-p ghost-packages))

(defun ghost-require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package ghost-packages)
    (add-to-list 'ghost-packages package))
  (unless (package-installed-p package)
    (package-install package)))
(define-obsolete-function-alias 'ghost-ensure-module-deps 'ghost-require-packages)

(defun ghost-install-packages ()
  "Install all packages listed in `ghost-packages'."
  (unless (ghost-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Ghost Emacs is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages.
    (ghost-require-packages ghost-packages)))

(defun ghost-require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'ghost-require-package packages))

;; run package installation.
(ghost-install-packages)

(defun ghost-list-foregin-packages ()
  "Browse third-party packages not bundled with SuperEmacs.

Behaves similarly to `list-packages', but shows only the packages that
are installed and not in `ghost-packages'.
Useful for removing unwanted packages."
  (interactive)
  (package-show-package-list
   (set-difference package-activated-list ghost-packages)))

(defmacro ghost-auto-install (extension package mode)
  "When file with EXTENSION is opened triggers auto-install of PACKAGE.
PACKAGE is installed only if not already present. The file is opened in MODE."
  `(add-to-list 'auto-mode-alist
                `(,extension . (lambda ()
                                 (unless (package-installed-p ',package)
                                   (package-install ',package))
                                 (,mode)))))

(defvar ghost-auto-install-alist
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

;; build auto-install mappings
(mapc
 (lambda (entry)
   (let ((extension (car entry))
         (package (cadr entry))
         (mode (cadr (cdr entry))))
     (unless (package-installed-p package)
       (ghost-auto-install extension package mode))))
 ghost-auto-install-alist)

(provide 'packages)
;;; packages.el ends here
