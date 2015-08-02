;;; patch --- Patch for emacs
;;; Commentary:

;;; Code:
(defun open-in-desktop ()
  "Show current file in desktop (OS's file manager)."
  (interactive)
  (cond
   ((string-equal system-type "darwin") (shell-command "open ."))))

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
(sr-speedbar-refresh-turn-off)

(provide 'patch)
;;; patch.el ends here
