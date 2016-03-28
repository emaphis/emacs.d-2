;;; init -- emacs initialization file
;; Copyright © 2016 Ed Maphis

;;; Commentary:

;;; Code:
(add-to-list 'load-path "~/.emacs.d/custom")

(load "better-defaults.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; packages and repositories
;;;
(require 'package)

;(add-to-list 'package-archives
;             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
;(add-to-list 'package-archives
;             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

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
    smex
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

    sml-mode

    ;; haskell
    haskell-mode
;;    haskell-flycheck
;;    ghc
;;    company-ghc

    ;; fsharp
    fsharp-mode

    ;; Ocaml
    tuareg

    ;; Scala
    ensime
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

;; haskell
(load "set-haskell.el")

;; fsharp
(load "set-fsharp.el")

;; Scala
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; allegro CL
;;(load "set-allegro.el")

;; lisp  with slime
(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")
(slime-setup '(slime-company))


;; Python
;;(elpy-enable)


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


;;; Keep emacs custom-settings in separate file
(setq custom-file "~/.emacs.d/custom/set-custom.el")
(load custom-file)

(provide 'init)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
