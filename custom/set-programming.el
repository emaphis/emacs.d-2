;; set-programming -- provides programming customisations
;; Copyright © 2016 Ed Maphis

;;; Commentary:
;;  an Emacs setup based on clojure example.

;;; Code:

;;(show-paren-mode)

;; paredit
;;(require 'paredit)
;;(add-hook 'lisp-mode-hook #'paredit-mode)
;;(add-hook 'emacs-lisp-mode-hook #'paredit-mode)

;; smartparens
(require 'smartparens-config)
(sp-use-smartparens-bindings)
(smartparens-global-mode t)
(show-smartparens-global-mode t) ; highlights matching pairs
(sp-pair "(" ")" :wrap "M-(")
(sp-pair "[" "]" :wrap "M-[")
(sp-pair "{" "}" :wrap "M-{")


;; flycheck
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))

;; company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)


;; hl-sexp
(require 'hl-sexp)
(add-hook 'lisp-mode-hook #'hl-sexp-mode)
(add-hook 'emacs-lisp-mode-hook #'hl-sexp-mode)

;; hi-light TODO:
(add-hook 'prog-mode-hook
          (lambda ()
            (font-lock-add-keywords nil
               '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|OPTIMIZE\\|HACK\\|REFACTOR\\):"
                  1 font-lock-warning-face t)))))



(provide 'set-programming)
;;; set-programming ends here
