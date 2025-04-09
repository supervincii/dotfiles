;;; supervincii-editor --- general editor configuration -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path "~/dotfiles/.config/emacs/supervincii/editor")

(require 'supervincii-completion)
(require 'supervincii-flycheck)
(require 'supervincii-treesitter)
(require 'supervincii-minibuffer)
(require 'supervincii-lsp)

(provide 'supervincii-editor)
;;; supervincii-editor.el ends here
