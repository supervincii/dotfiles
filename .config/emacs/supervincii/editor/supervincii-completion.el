;;; supervincii-completion --- autocompletion -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'supervincii-package)

(use-package company
  :after lsp-mode
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 1)
  :config
  (global-company-mode))

(provide 'supervincii-completion)
;;; supervincii-completion.el ends here
