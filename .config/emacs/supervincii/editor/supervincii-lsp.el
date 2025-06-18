;;; supervincii-lsp --- language server protocol -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'supervincii-package)

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :custom
  (lsp-prefer-flymake nil)
  (lsp-enable-snippet t)
  :hook
  ((lsp-mode . lsp-enable-which-key-integration)
   (c-ts-mode . lsp)
   (c++-ts-mode . lsp)
   (tsx-ts-mode . lsp)
   (typescript-ts-mode . lsp)
   (js-ts-mode . lsp)
   (jtsx-jsx-mode . lsp)
   (jtsx-tsx-mode . lsp)
   (jtsx-typescript-mode . lsp)
   (css-ts-mode . lsp))

  :commands lsp)

(use-package lsp-ui
  :custom
  (lsp-ui-sideline-enable nil)
  (lsp-ui-doc-enable t)
  (lsp-ui-doc-delay 0)
  (lsp-ui-doc-position 'top)
  (lsp-ui-doc-show-with-cursor t)
  (lsp-ui-doc-show-with-mouse t)
  (lsp-ui-doc-use-childframe nil)
  :hook
  (lsp-mode . lsp-ui-mode))

(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)

(use-package yasnippet
  :config
  (yas-reload-all)
  :hook ((lsp-mode . yas-minor-mode)))

(setq global-eldoc-mode nil)

(provide 'supervincii-lsp)
;;; supervincii-lsp.el ends here
