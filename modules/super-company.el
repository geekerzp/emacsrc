;; Code:

(global-company-mode t)
(push 'company-robe company-backends)
(delete 'company-ropemacs company-backends)


(provide 'super-company)
