;;; supervincii-theme --- theme configuration -*- lexical-binding: t; -*-

(require 'supervincii-package)

;; Font setting
(set-face-attribute 'default nil :font "CommitMono-16")

(use-package ef-themes
  :config
  (load-theme 'ef-light :no-confirm))

(provide 'supervincii-theme)
