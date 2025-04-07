;;; supervincii-package --- package management -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; Initialize package sources
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Ensure that use-package is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Configure use-package
(require 'use-package)
(setq use-package-always-ensure t)

(provide 'supervincii-package)
;;; supervincii-package.el ends here
