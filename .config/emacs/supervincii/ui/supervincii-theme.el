;;; supervincii-theme --- Theme configuration -*- lexical-binding: t; -*-

;; Font setting
(set-face-attribute 'default nil :font "CommitMono-18")

(use-package ef-themes
  :config
  (load-theme 'ef-light :no-confirm))

(provide 'supervincii-theme)
