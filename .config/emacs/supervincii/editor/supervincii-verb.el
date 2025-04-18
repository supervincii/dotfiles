;;; supervincii-verb --- http client for emacs -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'supervincii-package)

(use-package verb
  :after org
  :config
  (define-key org-mode-map (kbd "C-c C-r") verb-command-map))

(provide 'supervincii-verb)
;;; supervincii-verb.el ends here
