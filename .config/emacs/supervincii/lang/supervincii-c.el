;;; supervincii-c --- c programming config -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'supervincii-package)

;; Add a custom style for C
(defun sv/c-setup ()
  "C programming configuration."
  (setq-local c-default-style "linux"
              tab-width 4
              c-basic-offset 4
              indent-tabs-mode nil)
  (setq-local c-ts-mode-indent-style 'linux
              c-ts-mode-indent-offset 4))

(add-hook 'c-mode-hook 'sv/c-setup)
(add-hook 'c-ts-mode-hook 'sv/c-setup)
(add-hook 'c++-mode-hook 'sv/c-setup)
(add-hook 'c++-ts-mode-hook 'sv/c-setup)


(provide 'supervincii-c)
;;; supervincii-c.el ends here
