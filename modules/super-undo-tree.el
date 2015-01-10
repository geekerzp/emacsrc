;; Code:

;; By default, the keys to undo are {【Ctrl+/】, 【Ctrl+_】}. The keys to redo are: {【Ctrl+?】, 【Meta+_】}

(require 'undo-tree)
(global-undo-tree-mode 1)

(provide 'super-undo-tree)
