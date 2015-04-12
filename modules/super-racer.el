(setq racer-rust-src-path "/usr/local/src/rust/src")
(setq racer-cmd "/Users/geekerzp/racer/target/release/racer")
(add-to-list 'load-path "/Users/geekerzp/racer/editors")
(eval-after-load "rust-mode" '(require 'racer))

(provide 'super-racer)
