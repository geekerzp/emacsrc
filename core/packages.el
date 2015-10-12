;;; packages.el --- Kitten Emacs: default package selection.

;;; Commentary:

;;; Code:
(require 'cl)
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("elpy"      . "http://jorgenschaefer.github.io/packages/"))
(add-to-list 'package-archives
             '("SC"        . "http://joseito.republika.pl/sunrise-commander/"))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
;; set package-user-dir to be relative to root path
(setq package-user-dir (expand-file-name "elpa" root-dir))
(package-initialize)

(defvar kitten/packages
  '(ace-jump-mode
    ace-jump-buffer
    ace-window
    auto-compile
    avy
    anzu
    browse-kill-ring
    dired+
    dash-functional
    discover-my-major
    diff-hl
    diminish
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
    guru-mode
    indent-guide
    ido
    irony
    ov
    magit
    move-text
    operate-on-number
    rainbow-mode
    rainbow-delimiters
    smartrep
    smart-mode-line
    paren
    undo-tree
    volatile-highlights
    distinguished-theme)
  "A list of packages to ensure are installed at launch.")

(defun kitten/packages-installed-p ()
  "Check if all packages in `kitten/packages' are installed."
  (every #'package-installed-p kitten/packages))

(defun kitten/require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package kitten/packages)
    (add-to-list 'kitten/packages package))
  (unless (package-installed-p package)
    (package-install package)))
(define-obsolete-function-alias 'kitten/ensure-module-deps 'kitten/require-packages)

(defun kitten/install-packages ()
  "Install all packages listed in `kitten/packages'."
  (unless (kitten/packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Kitten Emacs is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages.
    (kitten/require-packages kitten/packages)))

(defun kitten/require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'kitten/require-package packages))

;; run package installation.
(kitten/install-packages)

(defun kitten/list-foregin-packages ()
  "Browse third-party packages not bundled with SuperEmacs.

Behaves similarly to `list-packages', but shows only the packages that
are installed and not in `kitten/packages'.
Useful for removing unwanted packages."
  (interactive)
  (package-show-package-list
   (set-difference package-activated-list kitten/packages)))

(defmacro kitten/auto-install (extension package mode)
  "When file with EXTENSION is opened triggers auto-install of PACKAGE.
PACKAGE is installed only if not already present. The file is opened in MODE."
  `(add-to-list 'auto-mode-alist
                `(,extension . (lambda ()
                                 (unless (package-installed-p ',package)
                                   (package-install ',package))
                                 (,mode)))))

(defvar kitten/auto-install-alist
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
       (kitten/auto-install extension package mode))))
 kitten/auto-install-alist)

(provide 'packages)
;;; packages.el ends here
