;;; set-clojure -- provides clojure customizations
;;; Copyright © 2015 Ed Maphis

;;; Commentary:
;; based on the example configuration from clojuer-emacs:
;; https://github.com/clojure-emacs/example-config

;;; Code:

(require 'clojure-mode)
(require 'cider)

;; REPL related stuff

;; REPL history file
(setq cider-repl-history-file "~/.emacs.d/cider-history")

;; nice pretty printing
(setq cider-repl-use-pretty-printing t)

;; nicer font lock in REPL
(setq cider-repl-use-clojure-font-lock t)

;; result prefix for the REPL
(setq cider-repl-result-prefix ";; => ")

;; never ending REPL history
(setq cider-repl-wrap-history t)

;; looong history
(setq cider-repl-history-size 3000)

;; eldoc for clojure
(add-hook 'cider-mode-hook #'eldoc-mode)

;; error buffer not popping up
(setq cider-show-error-buffer nil)

;; company mode for completion
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

;; paredit
(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'cider-repl-mode-hook #'paredit-mode)

;; hl-sexp
(add-hook 'clojure-mode-hook #'hl-sexp-mode)

(provide 'set-clojure)
;;; set-clojure.el ends here
