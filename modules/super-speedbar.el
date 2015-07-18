(require 'sr-speedbar)

(setq sr-speedbar-right-side nil)
(setq sr-speedbar-width 25)
(setq dframe-update-speed t)

;; add extensions
(speedbar-add-supported-extension ".json")
(speedbar-add-supported-extension ".sh")
(speedbar-add-supported-extension ".rb")
(speedbar-add-supported-extension ".clj")
(speedbar-add-supported-extension ".py")
(speedbar-add-supported-extension ".mustache")
;; (setq speedbar-show-unknown-files t)

(provide 'super-speedbar)
