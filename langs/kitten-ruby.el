;;; ruby --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(rbenv ruby-tools inf-ruby yari rspec-mode ruby-end))

(require 'rbenv)
(require 'rspec-mode)

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

(define-key 'help-command (kbd "R") 'yari)

(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

(defun kitten/ruby-mode-hook ()
  "Hooks for Ruby programming."
  (global-rbenv-mode)
  (inf-ruby-minor-mode 1)
  (ruby-tools-mode 1)
  (subword-mode 1)
  (robe-mode 1)
  (turn-on-fic-mode)
  (rainbow-delimiters-mode 1))

(add-hook 'ruby-mode-hook 'kitten/ruby-mode-hook)

(provide 'kitten-ruby)
;;; kitten-ruby.el ends here
