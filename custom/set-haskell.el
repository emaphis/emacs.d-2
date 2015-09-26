;;; init -- haskell initialization file

;;; Commentary:
;; init file for haskell probramming

;;; Trouble shooting:
;;   If the REPL ever goes funny, you can clear the command queue via:
;; M-x haskell-process-clear
;;   Alternatively, you can just restart the process:
;; M-x haskell-process-restart
;;   Dump the  haskell-process  state:
;; M-: (haskell-process)

;;; Code:


;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(require 'hi2)
(add-hook 'haskell-mode-hook 'turn-on-hi2)

(add-hook 'haskell-mode-hook 'haskell-auto-insert-module-template)


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
(define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)

(define-key haskell-mode-map [f8] 'haskell-navigate-imports)


(custom-set-variables
  '(haskell-process-type 'stack-ghci))

(provide 'set-hsekll)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; set-haskell.el ends here
