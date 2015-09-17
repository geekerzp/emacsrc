;;; super-company --- company-mode config file
;;; Commentary:

;;; Code:
(require 'company)
(require 'company-emacs-eclim)
(require 'company-web-html)
(require 'company-web-jade)
(require 'company-web-slim)

;; basic
;; bigger popup window
(setq company-tooltip-limit 20)
;; align annotations to the right tooltip border
(setq company-tooltip-align-annotations 't)
;; decrease delay before autocompletion popup shows
(setq company-idle-delay .3)

;; company backends
(push 'company-robe company-backends)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-backends 'company-anaconda)
(add-to-list 'company-backends 'company-tern)

(delete 'company-ropemacs company-backends)

;; eclim
(company-emacs-eclim-setup)

(global-company-mode t)

;; web-mode

(provide 'super-company)
;;; super-company ends here
