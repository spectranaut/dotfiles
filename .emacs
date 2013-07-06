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

;; automaticly load slightly better theme for macosx emacs
;; to disable theme, 'meta-x disable-theme'
;; (load-theme 'tsdh-light' t)

;; automatically delete *Completions* buffers
(defun delete-completion-window-buffer (&optional output)                                                                
  (interactive)                                                                                                
  (dolist (win (window-list))                                                                                  
    (when (string= (buffer-name (window-buffer win)) "*Completions*")                                          
      (delete-window win)                                                                                      
      (kill-buffer "*Completions*")))                                                                          
  output)                                                                                                      

(add-hook 'comint-preoutput-filter-functions 'delete-completion-window-buffer)


