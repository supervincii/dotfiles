;;; supervincii-lsp --- language server protocol -*- lexical-binding: t; -*-

(require 'supervincii-package)

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :custom
  (lsp-prefer-flymake nil)
  :hook
  (lsp-mode . lsp-enable-which-key-integration)
  :commands lsp)

(use-package lsp-ui
  :custom
  (lsp-ui-sideline-enable nil)
  (lsp-ui-doc-enable t)
  (lsp-ui-doc-delay 0)
  (lsp-ui-doc-position 'bottom)
  (lsp-ui-doc-show-with-cursor t)
  (lsp-ui-doc-show-with-mouse t)
  :hook
  (lsp-mode . lsp-ui-mode)
  :commands lsp-ui-mode)

(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)



(provide 'supervincii-lsp)
