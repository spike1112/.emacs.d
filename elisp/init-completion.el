
 (use-package auto-complete
   :init
   (progn
     (ac-config-default)
     (global-auto-complete-mode t)))
     


;(use-package company
;  :bind (:map company-active-map
;         ("C-n" . company-select-next)
;         ("C-p" . company-select-previous))
;  :config
;  (setq company-idle-delay nil)
;  (global-company-mode 1)
;)





(provide 'init-completion)
