;;; ruby

(use-package rbenv
  :ensure t
  :defer t
  :init
  (add-hook 'ruby-mode-hook
            (lambda ()
              (global-rbenv-mode))))

(use-package robe
  :ensure t
  :defer t
  :init
  (add-hook 'ruby-mode-hook
            (lambda ()
              (robe-mode 1)
              (subword-mode 1)
              (rainbow-delimiters-mode 1)))
  :config
  (use-package ruby-end
    :ensure t))

(use-package ruby-tools
  :ensure t
  :defer t
  :init
  (add-hook 'ruby-mode-hook
            (lambda ()
              (ruby-tools-mode 1))))

(use-package inf-ruby
  :ensure t
  :defer t
  :init
  (add-hook 'ruby-mode-hook
            (lambda ()
              (inf-ruby-minor-mode 1))))

(use-package yari
  :ensure t
  :defer t
  :bind ("C-h r" . yari))

(use-package rspec-mode
  :ensure t
  :defer t
  :config
  (rspec-install-snippets))

;; Rake files are ruby, too, as are gemspecs, rackup files, and gemfiles.
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.cap\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.thor\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rabl\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Thorfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jbuilder\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Podfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.podspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Puppetfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Berksfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Appraisals\\'" . ruby-mode))

(provide 'ghost-ruby)
