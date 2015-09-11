(add-hook 'js3-mode-hook '(lambda () (tern-mode t)))
(add-hook 'coffee-mode-hook '(lambda () (tern-mode t)))

(provide 'super-tern)
