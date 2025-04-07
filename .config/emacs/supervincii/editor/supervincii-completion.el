;;; supervincii-completion --- autocompletion -*- lexical-binding: t; -*-

(require 'supervincii-package)

(use-package company
  :after lsp-mode
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 1)
  :config
  (global-company-mode))

(provide 'supervincii-completion)
