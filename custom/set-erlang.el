;;; set-erlang -- provides erlang customizations
;; Copyright © 2015 Ed Maphis

;;; Commentary:

;; some hints from Alex Ott:
;; http://alexott.net/en/writings/emacs-devenv/EmacsErlang.html

;;; Code:

(setq load-path (cons  "C:\\erl7.1\\lib\\tools-2.8.1\\emacs"
                       load-path))
(setq erlang-root-dir "C:\\erl7.1")
(setq exec-path (cons "C:\\erl7.1\bin" exec-path))
(require 'erlang-start)

(defun my-erlang-mode-hook ()
        ;; when starting an Erlang shell in Emacs, default in the node name
        (setq inferior-erlang-machine-options '("-sname" "emacs"))
        ;; add Erlang functions to an imenu menu
        (imenu-add-to-menubar "imenu")
        ;; customize keys
        (local-set-key [return] 'newline-and-indent))

;; Some Erlang customizations
(add-hook 'erlang-mode-hook 'my-erlang-mode-hook)

;;(add-hook 'erlang-mode-hook #'paredit-mode)

(provide 'set-erlang)
;;; set-erlang.el ends here


