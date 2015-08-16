;;; patch --- Patch for emacs
;;; Commentary:

;;; Code:

(load-file "~/cedet/cedet-devel-load.el")

(defun open-in-desktop ()
  "Show current file in desktop (OS's file manager)."
  (interactive)
  (cond
   ((string-equal system-type "darwin") (shell-command "open ."))))

(provide 'patch)
;;; patch.el ends here
