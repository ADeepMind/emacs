
;; package-refresh-contents
(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa/") t)

;; sudo apt install sbcl
;; sudo apt install slime
;; sudo apt install common-lisp-controller
;; package-install RET slime
;; slime
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(menu-bar-mode 0)
(show-paren-mode 1)
(electric-pair-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (slime))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
