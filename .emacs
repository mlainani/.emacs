;for cscope
(load-file "~/.emacs.d/xcscope.el")
(require 'xcscope)
(setq cscope-do-not-update-database t)
(define-key global-map [(control f3)] 'cscope-set-initial-directory)
(define-key global-map [(control f4)] 'cscope-find-this-file)
(define-key global-map [(control f5)] 'cscope-find-this-symbol)
(define-key global-map [(control f6)] 'cscope-find-global-definition)
(define-key global-map [(control f7)] 'cscope-find-this-text-string)
(define-key global-map [(control f8)] 'cscope-pop-mark)
(define-key global-map [(control f9)] 'cscope-find-functions-calling-this-function)
(define-key global-map [(control f10)] 'cscope-find-called-functions)
(define-key global-map [(control f11)] 'cscope-display-buffer)
;cscope settings end here

(define-key global-map "\C-xc" 'compile)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(case-fold-search nil)
 '(display-time-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(add-hook 'c-mode-common-hook 'hs-minor-mode)
(add-hook 'c-mode-common-hook 'column-number-mode)

; Lauterbach Practice scripting language
(load-file "~/.emacs.d/practice.el")
(add-to-list 'auto-mode-alist '("\\.cmm\\'" . practice-mode))

; Show python-documentation as info-pages via C-h S
(setq load-path (cons "~/.emacs.d/libs/pydoc-info" load-path))
(require 'pydoc-info)
(info-lookup-add-help
   :mode 'python-mode
   :parse-rule 'pydoc-info-python-symbol-at-point
   :doc-spec
   '(("(python)Index" pydoc-info-lookup-transform-entry)
     ("(TARGETNAME)Index" pydoc-info-lookup-transform-entry)))

; Linux kernel-style comments
(setq comment-style 'multi-line)
(setq comment-style 'extra-line)

;Linux kernel -style indentation 
;(setq c-default-style '((other . "linux")))
(setq c-default-style '((other . "k&r")))

(add-hook 'python-mode-hook 'hs-minor-mode)
