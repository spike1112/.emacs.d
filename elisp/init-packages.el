;;; -*- lexical-binding: t -*-

(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/"))
(add-to-list 'package-archives
	         '("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/"))


;; install 'use-package'
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))


(use-package which-key
  :ensure t
  :config
  (which-key-mode t)
  :delight)

(use-package helpful
  :bind (("C-c C-d" . help-at-point)))

(use-package ivy
  :ensure   t
  :diminish ivy-mode
  :hook (after-init . ivy-mode)
  :config
  (setq ivy-use-virtual-buffers t
                                        ;ivy-count-format "(%d%d) "
	    ivy-initial-inputs-alist nil)
  :bind (("C-x b" . ivy-switch-buffer)
	     ("C-x B" . ivy-switch-buffer-other-window)))

(use-package counsel
  :ensure t
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-'" . counsel-imenu)
         ("C-c s" . counsel-rg)
         :map counsel-find-file-map
         ("RET" . ivy-alt-done))
  :delight)

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper-isearch)
         ("H-s" . isearch-forward-regexp))
  :delight)

(use-package ibuffer
  :ensure nil
  :bind ("C-x C-b" . ibuffer)
  :init
  (use-package ibuffer-vc
    :commands (ibuffer-vc-set-filter-groups-by-vc-root)
    :custom
    (ibuffer-vc-skip-if-remote 'nil))
  :custom
  (ibuffer-formats
   '((mark modified read-only locked " "
           (name 35 35 :left :elide)
           " "
           (size 9 -1 :right)
           " "
           (mode 16 16 :left :elide)
           " " filename-and-process)
     (mark " "
           (name 16 -1)
           " " filename))))

(use-package rime
  :custom
  (default-input-method "rime")
  (rime-user-data-dir "~/.config/fcitx/rime")
)

(use-package hungry-delete
  :diminish
  :hook (after-init . global-hungry-delete-mode)
  :config (setq-default hungry-delete-chars-to-skip " \t\f\v"))

(use-package flycheck
  :init
  (global-flycheck-mode t))

(use-package yasnippet
  :init
  (yas-global-mode 1))

(provide 'init-packages)
