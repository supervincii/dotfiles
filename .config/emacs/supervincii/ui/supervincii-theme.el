;;; supervincii-theme --- theme configuration -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'supervincii-package)

;; Font setting
(set-face-attribute 'default nil :font "Monoid-14")

(use-package doom-themes
  :config
  (load-theme 'doom-dracula :no-confirm))

;; (use-package ef-themes
;;   :config
;;   (load-theme 'ef-light :no-confirm))

(provide 'supervincii-theme)
;;; supervincii-theme.el ends here
