;; .emacs
(custom-set-variables
 ;; uncomment to always end a file with a newline
 ;'(require-final-newline t)
 ;; uncomment to disable loading of "default.el" at startup
 ;'(inhibit-default-init t)
 ;; default to unified diffs
 '(diff-switches "-u"))

(defun recursionless-balance (&optional args)
  (progn
    (remove-hook 'window-configuration-change-hook 'recursionless-balance)
    (balance-windows nil)
    (add-hook 'window-configuration-change-hook 'recursionless-balance)))
(add-hook 'window-configuration-change-hook 'recursionless-balance)

(setq windmove-wrap-around t)
(setq inhibit-startup-screen t)
;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)
(shell)
