;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package) ;; You might already have this line

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(add-to-list 'package-archives
'("marmalade" . "http://marmalade-repo.org/packages/"))

;; disable tool bar and menubar
(tool-bar-mode -1)
(menu-bar-mode -1)

;; default theme
(load-theme 'monokai t)

;; smex
(global-set-key (kbd "M-x") 'smex)

;; NEOTREE
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(global-set-key [s-left] 'windmove-left) 
(global-set-key [s-right] 'windmove-right) 
(global-set-key [s-up] 'windmove-up) 
(global-set-key [s-down] 'windmove-down)

;; Alchemist setings
(setq alchemist-hooks-test-on-save t)
(setq alchemist-hooks-compile-on-save t)

;; company mode
(add-hook 'after-init-hook 'global-company-mode)

;; linum-mode
(require 'linum)
(global-linum-mode 1)

;;;(defun copy-from-osx ()
;;;       (shell-command-to-string "pbpaste"))

;;;(defun paste-to-osx (text &optional push)
;;;       (let ((process-connection-type nil))
;;;       (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
;;;       (process-send-string proc text)
;;;       (process-send-eof proc))))

;;;(setq interprogram-cut-function 'paste-to-osx)
;;;(setq interprogram-paste-function 'copy-from-osx)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" default)))
 '(inhibit-default-init t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (magit monokai-theme json-mode alchemist smex neotree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
