;;; super-company --- company-mode config file
;;; Commentary:

;;; Code:
(require 'company)
(require 'company-emacs-eclim)

;; company backends
(push 'company-robe company-backends)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-backends 'company-anaconda)
(add-to-list 'company-backends 'company-tern)

(delete 'company-ropemacs company-backends)

;; eclim
(company-emacs-eclim-setup)

(global-company-mode t)

(provide 'super-company)
;;; super-company ends here
