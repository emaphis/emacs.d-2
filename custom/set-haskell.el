;;; init -- haskell initialization file
;; Copyright © 2016 Ed Maphis

;;; Commentary:
;; init file for haskell probramming

;;; Trouble shooting:
;;   If the REPL ever goes funny, you can clear the command queue via:
;; M-x haskell-process-clear
;;   Alternatively, you can just restart the process:
;; M-x haskell-process-restart
;;   Dump the  haskell-process  state:
;; M-: (haskell-process)
;;   Cancel a running REPL command
;; C-c C-c
;;   Clear the REPL

;;; Code:


;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)


(add-hook 'haskell-mode-hook 'haskell-auto-insert-module-template)


(add-hook 'haskell-mode-hook 'my-haskell-hook)

(defun my-haskell-hook ()
  (flycheck-mode 1)
  "This is my haskell mode hook")


;; haskell interactive suttings
(require 'haskell-interactive-mode)
(require 'haskell-process)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(custom-set-variables
  '(haskell-process-suggest-remove-import-lines t)
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t))

(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)

(define-key haskell-mode-map [f8] 'haskell-navigate-imports)


(custom-set-variables
 '(haskell-process-type 'stack-ghci))

;;(custom-set-variables
;; '(haskell-process-type 'ghci))


;; ghc-mod stuff
;(autoload 'ghc-init "ghc" nil t)
;(autoload 'ghc-debug "ghc" nil t)
;(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

;(add-to-list 'company-backends 'company-ghc)

(provide 'set-haskell)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; set-haskell.el ends here
