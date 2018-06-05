;; .emacs
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(custom-set-variables
 ;; uncomment to always end a file with a newline
 ;'(require-final-newline t)
 ;; uncomment to disable loading of "default.el" at startup
 ;'(inhibit-default-init t)
 ;; default to unified diffs
 '(diff-switches "-u"))

(defun recursionless-balance (&optional)
  (progn
    (remove-hook 'window-configuration-change-hook 'recursionless-balance)
    (balance-windows nil)
    (add-hook 'window-configuration-change-hook 'recursionless-balance)))

(add-hook 'window-configuration-change-hook 'recursionless-balance)
;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)
(shell)
