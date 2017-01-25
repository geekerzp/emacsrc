;;; Speedbar --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(sr-speedbar))

(require 'sr-speedbar)
(require 'speedbar)

(defezimage ezimage-directory-plus-new
    ((:type png :file "~/.emacs.d/icons/folder.png" :ascent center))
    "speedbar-directory-plus")

(defezimage ezimage-directory-minus-new
    ((:type png :file "~/.emacs.d/icons/folder_open.png" :ascent center))
    "speedbar-directory-minus")

(setq speedbar-expand-image-button-alist
  '(("<+>" . ezimage-directory-plus-new) ;; previously ezimage-directory-plus
    ("<->" . ezimage-directory-minus-new) ;; previously ezimage-directory-minus
    ("< >" . ezimage-directory)
    ("[+]" . ezimage-page-plus)
    ("[-]" . ezimage-page-minus)
    ("[?]" . ezimage-page)
    ("[ ]" . ezimage-page)
    ("{+}" . ezimage-directory-plus) ;; previously ezimage-box-plus
    ("{-}" . ezimage-directory-minus) ;; previously ezimage-box-minus
    ("<M>" . ezimage-mail)
    ("<d>" . ezimage-document-tag)
    ("<i>" . ezimage-info-tag)
    (" =>" . ezimage-tag)
    (" +>" . ezimage-tag-gt)
    (" ->" . ezimage-tag-v)
    (">"   . ezimage-tag)
    ("@"   . ezimage-tag-type)
    ("  @" . ezimage-tag-type)
    ("*"   . ezimage-checkout)
    ("#"   . ezimage-object)
    ("!"   . ezimage-object-out-of-date)
    ("//"  . ezimage-label)
    ("%"   . ezimage-lock)
    ))

;; keybindings
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)

(setq sr-speedbar-right-side nil)
(setq speedbar-smart-directory-expand-flag t)
(setq speedbar-use-images t)
(setq sr-speedbar-auto-refresh nil)
(setq sr-speedbar-width 30)
(setq sr-speedbar-right-side nil)

;; extensions
(speedbar-add-supported-extension ".rb")
(speedbar-add-supported-extension ".rake")
(speedbar-add-supported-extension ".js")
(speedbar-add-supported-extension ".clj")
(speedbar-add-supported-extension ".html")
(speedbar-add-supported-extension ".erb")
(speedbar-add-supported-extension ".sql")
(speedbar-add-supported-extension ".sh")
(speedbar-add-supported-extension ".css")
(speedbar-add-supported-extension ".scss")
(speedbar-add-supported-extension ".yml")
(speedbar-add-supported-extension ".coffee")
(speedbar-add-supported-extension ".ts")
(speedbar-add-supported-extension ".json")
(speedbar-add-supported-extension ".jbuilder")
(speedbar-add-supported-extension ".slim")
(speedbar-add-supported-extension ".exs")
(speedbar-add-supported-extension ".ex")
(speedbar-add-supported-extension ".eex")

(add-hook 'speedbar-mode-hook '(lambda () (linum-mode -1)))

(provide 'kitten-speedbar)
