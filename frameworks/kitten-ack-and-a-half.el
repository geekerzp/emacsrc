;;; Ack-and-a-half --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(ack-and-a-half))

(require 'ack-and-a-half)

(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

;; keybindings
(global-set-key (kbd "C-c a") 'ack)

(provide 'kitten-ack-and-a-half)
;;; kitten-ack-and-a-half.el ends here
