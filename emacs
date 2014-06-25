;; MELPA
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa"     . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("elpy"      . "http://jorgenschaefer.github.io/packages/"))
(add-to-list 'package-archives
             '("SC"        . "http://joseito.republika.pl/sunrise-commander/"))
(package-initialize)

;; Basic
;; ----------------------------------------------------------------
;; clipboard
(setq x-select-enable-clipboard t)
;; theme
(load-theme 'distinguished t)
;; disable menubar, toolbar, scrollbar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
;; Font
(set-frame-font "-adobe-Source Code Pro for Powerline-normal-normal-*-*-*-*-*-m-0-iso10646-1")
;; Autoclose
(electric-pair-mode 1)
;; backup
(setq make-backup-files nil)
;; auto-save
(setq auto-save-default nil)
;; tab
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
;; yes-or-no-p
(fset 'yes-or-no-p 'y-or-n-p)
;; ----------------------------------------------------------------

;; Company
(global-company-mode t)
(push 'company-robe company-backends)

;; enh-ruby-mode
;; Rake files are ruby, too, as are gemspecs, rackup files, etc.
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . enh-ruby-mode))

;; Robe
(require 'robe)
(add-hook 'enh-ruby-mode-hook 'robe-mode)
(add-hook 'ruby-mode-hook 'robe-mode)
(global-set-key (kbd "C-c r s") 'robe-start)

;; inf-ruby
(global-set-key (kbd "C-c r r") 'inf-ruby)

;; Flymake-ruby
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;; Powerline
(require 'cl)
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

;; Indent-guide
(add-to-list 'load-path "~/.emacs.d/vendor/indent-guide")
(require 'indent-guide)
(indent-guide-global-mode)

;; Evil(把Emacs编程Vim哈哈)
(require 'evil)
(evil-mode 1)
(setq evil-default-state 'emacs) ;; 默认进入emacs模式
;; C-o按键调用vim功能（就是临时进入normal模式，然后自动回来）
(define-key evil-emacs-state-map (kbd "C-o") 'evil-execute-in-normal-state)
;; 下面4行是设置使用C-d作为ESC按键，这个自己看吧
(define-key evil-insert-state-map (kbd "C-d") 'evil-change-to-previous-state)
(define-key evil-normal-state-map (kbd "C-d") 'evil-force-normal-state)
(define-key evil-replace-state-map (kbd "C-d") 'evil-normal-state)
(define-key evil-visual-state-map (kbd "C-d") 'evil-exit-visual-state)
;; navigate windows
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)

;; path-headerline-mode
(require 'path-headerline-mode)
(path-headerline-mode +1)

;; disable welcome page
(setq inhibit-startup-message t)

;; ido mode
(ido-mode 1)
(setq ido-ignore-buffers '("^ " "*Completions*" "*Shell Command Output*" "*Messages*" "Async Shell Command"))

;; js3-mode
(autoload 'js3-mode "js3" nil t)

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; project-mode
(require 'grizzl)
 (projectile-global-mode)
 (setq projectile-enable-caching t)
 (setq projectile-completion-system 'grizzl)
 ;; Press Command-p for fuzzy find in project
 (global-set-key (kbd "s-f") 'projectile-find-file)
 ;; Press Command-b for fuzzy switch buffer
 (global-set-key (kbd "s-b") 'projectile-switch-to-buffer)
;; Using Projectile everywhere
;;(setq projectile-require-project-root nil)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(setq projectile-indexing-method 'native)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; ack-and-a-half
(require 'ack-and-a-half)
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)
(global-set-key (kbd "C-c a") 'ack)

;; project-explorer
(global-set-key (kbd "s-s") 'project-explorer-open)
(setq pe/width 25)

;; Python
;;----------------------------------------------------------------
;; elpy
(elpy-enable)
(elpy-use-ipython)

;; pymacs
(require 'pymacs)
;;----------------------------------------------------------------
