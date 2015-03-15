;;; emacs initialization file

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
    ;; erlang
   ; erlang

    ) "Packages managed as elpa repositories.")

;; erlang
(load "set-erlang.el")


;; lisp
(setq inferior-lisp-program "sbcl")
