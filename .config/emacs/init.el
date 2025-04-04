;;; init --- initialization -*- lexical-binding: t -*-

;; Speed up initial startup
;; Speeding up Emacs startup is done by tweaking garbage collection settings. Most notably the threshold so garbage collection happens less frequently.
(setq
 gc-cons-threshold (* 100 1024 1024)
 gc-cons-percentage 0.6
 read-process-output-max (* 1024 1024))

;; Setting non-package specific variables
(setq
 display-line-numbers-type 'relative ;; Show relative line numbers in relation to the current line
 ring-bell-function 'ignore          ;; Remove annoying bell sound
 inhibit-splash-screen t             ;; Don't show the splash screen
 make-backup-files nil               ;; Don't pollute directories with backups
 auto-save-default nil               ;; Don't auto-save files
 initial-scratch-message nil         ;; Don't show a message when opening a *scratch* buffer
 confirm-kill-emacs 'y-or-n-p        ;; Ask before exiting Emacs
 custom-file "/dev/null"             ;; Don't save customizations, just delete them
 scroll-step 1)                      ;; Don't jump around when scrolling

(setq-default
 fill-column 80
 line-spacing 5
 indent-tabs-mode nil
 cursor-in-non-selected-windows nil)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(tooltip-mode -1)
(column-number-mode)
(global-display-line-numbers-mode t)
(global-visual-line-mode t)
(delete-selection-mode t)
(electric-pair-mode t)

(global-display-fill-column-indicator-mode 1)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Load the remaining configuration
(add-to-list 'load-path "~/dotfiles/.config/emacs/supervincii")
(require 'supervincii-core)
(require 'supervincii-ui)

(provide 'init)
