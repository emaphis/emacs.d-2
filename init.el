;;; init -- emacs initialization file

;;; Commentary:

;;; Code:
(add-to-list 'load-path "~/.emacs.d/custom")

(load "better-defaults.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; packages and repositories
;;;
(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    dash
;;    s
    company
    flycheck
    flycheck-pos-tip
    magit
;;;    paredit
    smartparens
    rainbow-delimiters
    s
    ;; erlang
    ; erlang

    hl-sexp
    clojure-mode
    cider
    flycheck-clojure
    clj-refactor

    ) "Packages managed as elpa repositories.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


;; general programming utilities
(load "set-programming.el")

;; erlang
(load "set-erlang.el")

;; clojure
(load "set-clojure.el")

;; lisp
(setq inferior-lisp-program "sbcl")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; some global key settings

;; toggle menu bar mode
(global-set-key (kbd "<f7>") 'menu-bar-mode)

;; toggle whitespace mode
(global-set-key (kbd "<f6>") 'whitespace-mode)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)


(defun hide-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

;; set aspell
(setq-default ispell-program-name "aspell")

;;; display column number in mode-line
(column-number-mode t)


(provide 'init)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
