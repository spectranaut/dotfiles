;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;org-mode configuration
;; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
;; The above is the default in recent emacsen

;; Enable org-indent-mode
(setq org-startup-indented t)

;; Enable line wrap (in org mode, specifically?
;; (visual-line-mode 1)
(global-visual-line-mode t)

;; MACOSX - automaticly load slightly better theme for 
;; sliver terminal
;; to disable theme, 'meta-x disable-theme'
;; (load-theme 'tsdh-light' t)

;; add new theme directory
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("007b69ffec046a5842e34fea287b23c49175dfd6c6d5a0d9cdf150a2e8a8979f" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Color themes? not good for gui-less emacs

;;(load-theme 'noctilux t)
;;(load-theme 'solarized-dark t)
