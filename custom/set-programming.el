;; set-programming.el
;; provides programming customisations
;; Copyright © 2015 Ed Maphis

;;; Code:

(show-paren-mode)

;; paredit
(require 'paredit)
(add-hook 'lisp-mode-hook #'paredit-mode)
(add-hook 'emacs-lisp-mode-hook #'paredit-mode)

;; flycheck
(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

;; company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; rainbow delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(provide 'set-programming)
;;; set-programming ends here
