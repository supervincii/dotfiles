;;; supervincii-minibuffer --- minibuffer enhancements -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'supervincii-package)

(use-package vertico
  :init
  (vertico-mode))

(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package savehist
  :init
  (savehist-mode))

(use-package marginalia
  :init
  (marginalia-mode))

;; Look at ~consult~ and ~embark~ for other minibuffer utility tools

(provide 'supervincii-minibuffer)
;;; supervincii-minibuffer.el ends here
