;;; supervincii-flycheck --- code analysis -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'supervincii-package)

(use-package flycheck
  :custom
  (flycheck-display-errors-delay 0.1)
  (flycheck-emacs-lisp-load-path 'inherit)
  :config
  (global-flycheck-mode))

(provide 'supervincii-flycheck)
;;; supervincii-flycheck.el ends here
