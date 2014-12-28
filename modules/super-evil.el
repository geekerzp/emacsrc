;; Code: Evil(把Emacs编程Vim哈哈)

(require 'evil)

(evil-mode 1)

;;(setq evil-default-state 'emacs) ;; 默认进入emacs模式

;; C-o按键调用vim功能（就是临时进入normal模式，然后自动回来）
(define-key evil-emacs-state-map (kbd "C-o") 'evil-execute-in-normal-state)

;; 下面4行是设置使用C-d作为ESC按键，这个自己看吧
(define-key evil-insert-state-map (kbd "C-d") 'evil-change-to-previous-state)
(define-key evil-normal-state-map (kbd "C-d") 'evil-force-normal-state)
(define-key evil-replace-state-map (kbd "C-d") 'evil-normal-state)
(define-key evil-visual-state-map (kbd "C-d") 'evil-exit-visual-state)

;; navigate windows
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)


(provide 'super-evil)
