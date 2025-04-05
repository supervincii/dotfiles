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
 cursor-in-non-selected-windows nil     ;; Reduce distraction by not showing cursor in non-selected windows
 fill-column 80                         ;; Set fill column at column 80
 line-spacing 8                         ;; Put a bit more padding between lines for readability
 indent-tabs-mode nil)                  ;; Use spaces instead of tabs for indentation

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(tooltip-mode -1)                       ;; Show tips in the minibuffer
(column-number-mode)
(global-display-line-numbers-mode t)    ;; Show line numbers everywhere
(global-visual-line-mode t)             ;; Enable visual line mode globally for word wrapping
(delete-selection-mode t)
(electric-pair-mode t)                  ;; Automatically inserts paren pairs

(global-display-fill-column-indicator-mode 1) ;; Show fill column

(add-to-list 'default-frame-alist '(fullscreen . maximized)) ;; Maximize Emacs on initialization

;; Load the remaining configuration
(add-to-list 'load-path "~/dotfiles/.config/emacs/supervincii")
(require 'supervincii-core)
(require 'supervincii-ui)
(require 'supervincii-lang)

(provide 'init)
