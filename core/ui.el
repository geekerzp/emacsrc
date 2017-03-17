;;; UI --- UI configurations
;;; Commentary:

;;; Code:
(require 'indent-guide)
(require 'all-the-icons)

;; disable menubar, toolbar, scrollbar
;; (menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; font
(set-face-attribute 'default nil
                    :family "Hack" :height 122 :weight 'Regular)

;; line spacing
(setq line-spacing 1.5)

;; theme
(load-theme 'distinguished t)

;; mode line
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

(defun custom-modeline-time ()
  (let* ((hour (string-to-number (format-time-string "%I")))
         (icon (all-the-icons-wicon (format "time-%s" hour) :height 1.3 :v-adjust 0.0)))
    (concat
     (propertize (format-time-string " %H:%M ") 'face `(:height 0.9))
     (propertize (format "%s " icon) 'face `(:height 1.0 :family ,(all-the-icons-wicon-family)) 'display '(raise -0.0)))))

(setq mode-line-format '("%e" (:eval
  (concat
   (custom-modeline-time)))))

;; indent guide line
(setq indent-guide-recursive t)
(indent-guide-global-mode)

(provide 'ui)
;;; ui.el ends here
