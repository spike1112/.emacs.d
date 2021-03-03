;;; -*- lexical-binding: t -*-

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(line-number-mode t)
(column-number-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(display-time-mode 1)
(show-paren-mode 1)
(setq make-backup-files nil)

(setq-default
 
 inhibit-startup-message t
 inhibit-startup-screen t
 inhibit-x-resources t
 frame-inhibit-implied-resize t
 initial-scratch-message ";; hello, world!"
 hl-line-sticky-flag nil
 create-lockfiles nil

 ;; UTF-8
 buffer-file-coding-system 'utf-8-unix
 default-file-name-coding-system 'utf-8-unix
 default-keyboard-coding-system 'utf-8-unix
 default-process-coding-system '(utf-8-unix . utf-8-unix)
 default-sendmail-coding-system 'utf-8-unix
 default-terminal-coding-system 'utf-8-unix


 custom-file "~/.emacs.d/custom-file.el"
 auto-save-default nil
 gc-cons-threshold most-positive-fixnum
 tab-width 4
 echo-keystrokes 0.01
 show-paren-style 'parenthesis
 mouse-yank-at-point t
 version-control t
 visibile-cursor t
 indent-tabs-mode nil
 display-line-numbers-width 4
 require-final-newline t)
 
;; Unbind unneeded keys
(global-set-key (kbd "C-z") nil)
(global-set-key (kbd "M-z") nil)
(global-set-key (kbd "M-m") nil)
(global-set-key (kbd "C-x C-z") nil)
(global-set-key (kbd "M-/") nil)

(provide 'init-defaults)
