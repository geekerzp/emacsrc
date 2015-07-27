;;-*-coding: utf-8;-*-
(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'Info-edit-mode-abbrev-table '())

(define-abbrev-table 'ack-and-a-half-mode-abbrev-table '())

(define-abbrev-table 'anaconda-nav-mode-abbrev-table '())

(define-abbrev-table 'apropos-mode-abbrev-table '())

(define-abbrev-table 'bookmark-bmenu-mode-abbrev-table '())

(define-abbrev-table 'bookmark-edit-annotation-mode-abbrev-table '())

(define-abbrev-table 'calendar-mode-abbrev-table '())

(define-abbrev-table 'cider-browse-ns-mode-abbrev-table '())

(define-abbrev-table 'cider-docview-mode-abbrev-table '())

(define-abbrev-table 'cider-inspector-mode-abbrev-table '())

(define-abbrev-table 'cider-repl-mode-abbrev-table '())

(define-abbrev-table 'cider-stacktrace-mode-abbrev-table '())

(define-abbrev-table 'cider-test-report-mode-abbrev-table '())

(define-abbrev-table 'clojure-mode-abbrev-table '())

(define-abbrev-table 'clojurec-mode-abbrev-table '())

(define-abbrev-table 'clojurescript-mode-abbrev-table '())

(define-abbrev-table 'clojurex-mode-abbrev-table '())

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

(define-abbrev-table 'edebug-eval-mode-abbrev-table '())

(define-abbrev-table 'edit-abbrevs-mode-abbrev-table '())

(define-abbrev-table 'elisp-byte-code-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'flycheck-error-list-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table '())

(define-abbrev-table 'gdb-script-mode-abbrev-table '())

(define-abbrev-table 'global-abbrev-table
  '(
    ("8ahk" "AutoHotkey" nil 0)
    ("8alt" "alternative" nil 0)
    ("8bg" "background" nil 0)
    ("8char" "character" nil 0)
    ("8cp" "computer" nil 0)
    ("8d" "\\([0-9]+?\\)" nil 0)
    ("8def" "definition" nil 0)
    ("8ditto" "ditto -ck --sequesterRsrc --keepParent src dest" nil 0)
    ("8env" "environment" nil 0)
    ("8ev" "environment variable" nil 0)
    ("8ex" "example" nil 0)
    ("8f0" "find . -type f -size 0 -exec rm {} ';'" nil 0)
    ("8g" "Google" nil 0)
    ("8ie" "Internet Explorer" nil 0)
    ("8im" "convert -quality 85% " nil 0)
    ("8in" "∈" nil 1)
    ("8inf" "∞" nil 0)
    ("8it" "IntelliType" nil 0)
    ("8kb" "keyboard" nil 0)
    ("8kbd" "keybinding" nil 0)
    ("8luv" "♥" nil 0)
    ("8me" "someone@example.com" nil 0)
    ("8ms" "Microsoft" nil 0)
    ("8msw" "Microsoft Windows" nil 0)
    ("8nin" "∉" nil 0)
    ("8rsync" "rsync -z -r -v -t --exclude=\"*~\" --exclude=\".DS_Store\" --exclude=\".bash_history\" --exclude=\"**/xx_xahlee_info/*\"  --exclude=\"*/_curves_robert_yates/*.png\" --exclude=\"logs/*\"  --exclude=\"xlogs/*\" --delete --rsh=\"ssh -l xah\" ~/web/ xah@example.com:~/" nil 0)
    ("8smly" "☺" nil 0)
    ("8str" "\\([^\"]+?\\)\"" nil 0)
    ("8uxl" "http://xahlee.info/" nil 0)
    ("8var" "variable" nil 0)
    ("8win" "Windows" nil 0)
    ("8wp" "Wikipedia" nil 0)
    ("8xl" "Xah Lee" nil 1)
   ))

(define-abbrev-table 'grep-mode-abbrev-table '())

(define-abbrev-table 'gud-mode-abbrev-table '())

(define-abbrev-table 'helm-grep-mode-abbrev-table '())

(define-abbrev-table 'helm-moccur-mode-abbrev-table '())

(define-abbrev-table 'help-mode-abbrev-table '())

(define-abbrev-table 'ibuffer-mode-abbrev-table '())

(define-abbrev-table 'image-dired-display-image-mode-abbrev-table '())

(define-abbrev-table 'image-dired-thumbnail-mode-abbrev-table '())

(define-abbrev-table 'inferior-python-mode-abbrev-table '())

(define-abbrev-table 'lisp-mode-abbrev-table '())

(define-abbrev-table 'messages-buffer-mode-abbrev-table '())

(define-abbrev-table 'nrepl-connections-buffer-mode-abbrev-table '())

(define-abbrev-table 'nrepl-messages-mode-abbrev-table '())

(define-abbrev-table 'occur-edit-mode-abbrev-table '())

(define-abbrev-table 'occur-mode-abbrev-table '())

(define-abbrev-table 'org-mode-abbrev-table '())

(define-abbrev-table 'outline-mode-abbrev-table '())

(define-abbrev-table 'package-menu-mode-abbrev-table '())

(define-abbrev-table 'process-menu-mode-abbrev-table '())

(define-abbrev-table 'prog-mode-abbrev-table '())

(define-abbrev-table 'projectile-rails-compilation-mode-abbrev-table '())

(define-abbrev-table 'projectile-rails-generate-mode-abbrev-table '())

(define-abbrev-table 'projectile-rails-server-mode-abbrev-table '())

(define-abbrev-table 'python-mode-abbrev-table '())

(define-abbrev-table 'python-mode-skeleton-abbrev-table
  '(
   ))

(define-abbrev-table 'rake-compilation-mode-abbrev-table '())

(define-abbrev-table 'rspec-compilation-mode-abbrev-table '())

(define-abbrev-table 'ruby-mode-abbrev-table '())

(define-abbrev-table 'select-tags-table-mode-abbrev-table '())

(define-abbrev-table 'shell-mode-abbrev-table '())

(define-abbrev-table 'sldb-mode-abbrev-table '())

(define-abbrev-table 'slime-compiler-notes-mode-abbrev-table '())

(define-abbrev-table 'slime-connection-list-mode-abbrev-table '())

(define-abbrev-table 'slime-fuzzy-completions-mode-abbrev-table '())

(define-abbrev-table 'slime-inspector-mode-abbrev-table '())

(define-abbrev-table 'slime-thread-control-mode-abbrev-table '())

(define-abbrev-table 'slime-trace-dialog--detail-mode-abbrev-table '())

(define-abbrev-table 'slime-trace-dialog-mode-abbrev-table '())

(define-abbrev-table 'slime-xref-mode-abbrev-table '())

(define-abbrev-table 'snippet-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'speedbar-mode-abbrev-table '())

(define-abbrev-table 'tabulated-list-mode-abbrev-table '())

(define-abbrev-table 'text-mode-abbrev-table '())

(define-abbrev-table 'url-cookie-mode-abbrev-table '())

(define-abbrev-table 'web-mode-abbrev-table '())

(define-abbrev-table 'xref--xref-buffer-mode-abbrev-table '())

