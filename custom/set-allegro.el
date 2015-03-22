;;; set-allegro -- Allegro Common Lisp settings

;;; Commentary:
;; This is sample code for starting and specifying defaults to the
;; Emacs-Lisp interface.


;;; Code:

(push "C:/acl90express/eli" load-path)
(load "fi-site-init.el")

(setq fi:common-lisp-image-name "C:/acl90express/allegro-express.exe")
(setq fi:common-lisp-image-file "C:/acl90express/allegro-express.dxl")
(setq fi:common-lisp-directory "C:/acl90express")

(defun run-lisp ()
  "Run a custom Allegro Lisp setup."
  (interactive)
  (fi:common-lisp "*common-lisp*"
                  "c:/acl90/"
                  "c:/acl90/mlisp.exe"
                  '("+B" "+cn")
                  "localhost"
                  "c:/acl90/mlisp.dxl"))


(provide 'set-allegro)
;;; set-allegro.el ends here
