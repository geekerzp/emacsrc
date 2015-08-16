;;; speedbar
(require 'speedbar)
(require 'sr-speedbar)
(speedbar-add-supported-extension ".js")
(speedbar-add-supported-extension ".rb")
(speedbar-add-supported-extension ".py")
(speedbar-add-supported-extension ".clj")
(speedbar-add-supported-extension ".coffee")
(speedbar-add-supported-extension ".css")
(speedbar-add-supported-extension ".stg")
(speedbar-add-supported-extension ".mustache")
(sr-speedbar-refresh-turn-off)

(provide 'super-speedbar)
