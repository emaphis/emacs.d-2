;;; set-fsharp -- provides fsharp customizations
;;;  Copyright © 2015 Ed Maphis

;;; Commentary:
;;


;;; Code:

(require 'fsharp-mode)

(add-hook 'fsharp-mode-hook 'my-fsharp-hook)

(defun my-fsharp-hook ()
  (company-mode -1)
  ;(auto-complete-mode 1)
  (flycheck-mode -1))

;; C:\Program Files\Microsoft SDKs\F#\4.0\Framework\v4.0
(setq inferior-fsharp-program "\"C:\\Program Files\\Microsoft SDKs\\F#\\4.0\\Framework\\v4.0\\Fsi.exe\"")
(setq fsharp-compiler "\"C:\\Program Files\\Microsoft SDKs\\F#\\4.0\\Framework\\v4.0\\Fsc.exe\"")

(provide 'set-fsharp)
;;; set-fsharp.el ends here
