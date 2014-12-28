;; Code:

;; Rake files are ruby, too, as are gemspecs, rackup files, etc.
(require 'cl)
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Podfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.podspec$" . enh-ruby-mode))

;; enable rubocop
(add-hook 'enh-ruby-mode-hook 'rubocop-mode)
(add-hook 'enh-ruby-mode-hook 'smartparens-ruby)


(provide 'super-enh-ruby-mode)
