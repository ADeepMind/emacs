
;; M-x package-refresh-contents
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa/") t)
(package-initialize)

(require 'company-lsp)

;;company
(use-package company
  :ensure t
  :config
  (global-company-mode t)
  (setq company-idle-delay 0)
  (setq company-show-numbers t)
  (setq company-minimum-prefix-length 2)
  (setq company-backends
        '((company-files
           company-keywords
           company-capf
           company-yasnippet
	   company-lsp)
          (company-abbrev company-dabbrev))))

;; sudo apt install llvm-tools
(use-package lsp-mode
  :init
  (setq lsp-clients-clangd-executable "/usr/bin/clangd-7")
  (setq lsp-enable-snippet nil)
  :hook ((c++-mode c-mode) . lsp-deferred)
  :commands (lsp lsp-deferred))

(use-package flycheck
  :ensure t
  :config (global-flycheck-mode))


;; sudo apt install sbcl
;; sudo apt install slime
;; sudo apt install common-lisp-controller
;; M-x package-install RET slime
;; slime
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
		(concat
		 user-emacs-directory "backup")))))
;; make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; org mode running source block
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (C . t)
   (python . t)
   (shell . t)
   (latex . t)
   (ditaa . t)))

(menu-bar-mode 0)
(show-paren-mode 1)
(electric-pair-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tabnine-use-native-json t)
 '(package-selected-packages
   (quote
    (company-tabnine company-lsp lsp-clangd ccls use-package cquery flycheck lsp-ui lsp-mode evil-nerd-commenter htmlize yasnippet slime))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
