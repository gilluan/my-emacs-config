
;; PACKAGES

;; add MELPA packages
(setq package-enable-at-startup nil) ; tells emacs not to load any packages before starting up
;; the following lines tell emacs where on the internet to look up
;; for new packages.
(setq package-archives '(
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "https://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize) ; guess what this one does ?


(unless (getenv "LANG") (setenv "LANG" "en_US.UTF-8"))

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package) ; unless it is already installed
  (package-refresh-contents) ; updage packages archive
  (package-install 'use-package)) ; and install the most recent version of use-package

(require 'use-package) ; guess what this one does too ?

;; PROXY

;(setq url-proxy-services '(("no_proxy" . "work\\.com")
;                           ("http" . "localhost:3128")))

;; THEME AND VISUAL SETTINGS

;; high-contrast zenburn theme (M-x package-list-packages to install)
(load-theme 'hc-zenburn t)

;; no tool bar
(tool-bar-mode 0)

;; no scroll bars
(scroll-bar-mode -1)

;; no start up message
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; removes *messages* from the buffer
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Removes *Completions* from buffer
;;(add-hook 'minibuffer-exit-hook
;;	  '(lambda ()
;;	     (let ((buffer "*Completions*"))
;;	       (and (get-buffer buffer)
;;		    (kill-buffer buffer)))))



;; no audible or visual bell when emacs is mad
(setq ring-bell-function 'ignore)

;; font size
(set-face-attribute 'default nil :height 160)

;; turn on line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; default frame size
(add-to-list 'default-frame-alist '(width . 90)
	     '(height . 100))




;; ########################   My customizations ################ ;;



;; ######################### TIDE CONFIG ######################## ;;

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; HELM

(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)


(require 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (projectile helm tide))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




