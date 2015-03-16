;;; emacs initialization file

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
    company
    flycheck
    magit
    paredit
    rainbow-delimiters

    ;; erlang
    ; erlang

;; - hl-sexp
 ;; - paredit
 ;; - clojure-mode
 ;; - cider

 ;; - flycheck-clojure
 ;; - clj-refactor (not from stable!)
    ) "Packages managed as elpa repositories.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


;; general programming utilities
(load "set-programming.el")

;; erlang
(load "set-erlang.el")


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

(provide 'init)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
