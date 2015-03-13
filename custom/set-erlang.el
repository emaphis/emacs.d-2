;; set-erlang.el
;; provides erlang customizations
;; Copyright © 2015 Ed Maphis

(setq load-path (cons  "C:\\erl6.3\\lib\\tools-2.7.1\\emacs"
                       load-path))
(setq erlang-root-dir "C:\\erl6.3")
(setq exec-path (cons "C:\\erl6.3\bin" exec-path))
(require 'erlang-start)

(provide 'set-erlang)
;; set-erlang.el ends here


