;; Code:

(global-company-mode t)

;; company backends
(push 'company-robe company-backends)
;;(push 'company-anaconda company-backends)
(add-to-list 'company-backends 'company-anaconda)
(add-to-list 'company-backends 'company-c-headers)
;; (optional) adds CC special commands to `company-begin-commands' in order to
;; trigger completion at interesting places, such as after scope operator
;;     std::|
(add-to-list 'company-backends 'company-irony)
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)

(delete 'company-ropemacs company-backends)


(provide 'super-company)
