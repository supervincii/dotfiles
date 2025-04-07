;;; supervincii-editor --- general editor configuration -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path "~/dotfiles/.config/emacs/supervincii/editor")

(require 'supervincii-lsp)
(require 'supervincii-completion)
(require 'supervincii-flycheck)
(require 'supervincii-treesitter)
(require 'supervincii-minibuffer)

(provide 'supervincii-editor)
;;; supervincii-editor.el ends here
