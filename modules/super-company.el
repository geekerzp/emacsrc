;; Code:

(global-company-mode t)

;; company backends
(push 'company-robe company-backends)
(add-to-list 'company-backends 'company-c-headers)

(delete 'company-ropemacs company-backends)


(provide 'super-company)
