;;; Company

(ghost-require-packages '(company company-anaconda robe sly-company company-tern))

(require 'company)
(require 'company-robe)
(require 'sly-company)
(require 'company-anaconda)

;; basic
;; bigger popup window
(setq company-tooltip-limit 20)
;; align annotations to the right tooltip border
(setq company-tooltip-align-annotations 't)
;; decrease delay before autocompletion popup shows
(setq company-idle-delay .3)
(setq company-minimum-prefix-length 2)
(setq company-tooltip-flip-when-above t)

;; keybindings
(global-set-key (kbd "C-c /") 'company-files)

;; company backends
(push 'company-robe company-backends)
(add-to-list 'company-backends 'company-anaconda)
(add-to-list 'company-backends 'company-tern)

(delete 'company-ropemacs company-backends)

(global-company-mode t)

(provide 'ghost-company)
