;;; library --- common functions

;;; Commentary:

;;; Code:

(defun kitten/open-in-desktop ()
  "Show current file in desktop (OS's file manager)."
  (interactive)
  (cond
   ((string-equal system-type "darwin") (shell-command "open ."))))

(defun kitten/switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(provide 'lib)
;;; lib.el ends here
