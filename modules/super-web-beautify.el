;; Code:

(eval-after-load 'web-mode '(define-key web-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'js3-mode '(define-key js3-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'json-mode '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'sgml-mode '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))

(eval-after-load 'css-mode '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))

(provide 'super-web-beautify)
