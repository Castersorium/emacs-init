
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
 	     '("gnu" . "https://elpa.gnu.org/packages/"))



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(require 'ido)
(setq indo-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; (use-package tabbar
;;   :ensure t
;;   :config
;;   (tabbar-mode 1))
;; it looks like counsel is a requirement for swiper

;;Customization
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (wombat)))
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (ace-window orgalist use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;For line numbers at front

 
;(set-default-font “Terminus-9”)
(set-face-attribute 'default nil :height 120)

;;For auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/popup-el")

(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories 
         "~/.emacs.d/plugins/auto-complete/dict/")
(ac-config-default)

(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas/global-mode 1)

(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'root-help)



;;For folding
;(add-to-list 'load-path "~/.emacs.d/project-emacs--folding-mode")
;(require 'folding)



(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '(
;;    (python . t)
;;    (R . t)
;;    (ruby . t)
;;    (ditaa . t)
;;    (dot . t)
;;    (octave . t)
;;    (sqlite . t)
;;    (perl . t)
;;    (C . t)
;;    ))

;using .org's package
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
