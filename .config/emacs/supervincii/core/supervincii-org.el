;;; supervincii-org --- org mode config -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'supervincii-package)

(require 'org-tempo)

(use-package org-bullets
  :hook
  ((org-mode . org-bullets-mode)
   (org-mode . org-indent-mode)))

(use-package toc-org
  :commands toc-org-enable
  :hook
  (org-mode . toc-org-enable))

(setq org-todo-keywords
      '((sequence "TODO" "IN PROGRESS" "|" "DONE")))

(provide 'supervincii-org)
;;; supervincii-org.el ends here
