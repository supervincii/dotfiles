;;; supervincii-treesitter --- treesitter support -*- lexical-binding: t; -*-

(require 'supervincii-package)

(use-package treesit-auto
  :custom
  (treesit-auto-install 'prompt)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))

(provide 'supervincii-treesitter)
