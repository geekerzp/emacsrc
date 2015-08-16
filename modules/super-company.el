;;; super-company --- company-mode config file
;;; Commentary:

;;; Code:
(require 'company)

(global-company-mode t)

;; company backends
(push 'company-robe company-backends)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-backends 'company-anaconda)
(add-to-list 'company-backends 'company-tern)

(delete 'company-ropemacs company-backends)

(provide 'super-company)
;;; super-company ends here
