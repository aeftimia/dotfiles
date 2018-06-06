;; .emacs
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(require 'evil)
(evil-mode 1)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'solarized-light t)
(setq solarized-high-contrast-mode-line t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-switches "-u")
 '(display-line-numbers (quote relative))
 '(package-selected-packages (quote (solarized-theme evil))))

;; Thanks Stevey!
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(defun recursionless-balance (&optional args)
  (remove-hook 'window-configuration-change-hook 'recursionless-balance)
  (balance-windows nil)
  (add-hook 'window-configuration-change-hook 'recursionless-balance))
(add-hook 'window-configuration-change-hook 'recursionless-balance)

(setq windmove-wrap-around t)
(setq inhibit-startup-screen t)
;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)

(shell)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
