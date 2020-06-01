;;;;;****	Desde aqui, editado por usuario	******;;;;
;;;; Este archivo debe ser editado lo mínimo posible 	;;;;
;;;; Si se desea editar alguna configuracion,	     	;;;;
;;;; ir al archivo custom-modifications.el o sus ramas	;;;;

;; Repositorios para descargar cosas de emacs

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))

;; Melpa-Stable tiene menos cantidad de packetes, pero son estables, descomentar si hay problemas con paquetes
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Cargar paquetes, se utiliza dos veces, pero es necesario
(package-initialize)

;; Directorio de modulos
(add-to-list 'load-path "~/.emacs.d/custom/")

;; Cargar custom
(require 'custom-modifications)

;;;;*****	Fin editado por usuario		****;;;;
;; Desde aquí se editará automaticamente por Emacs ;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-display-errors-delay 0.3)
 '(nyan-animate-nyancat t)
 '(nyan-cat-face-number 4)
 '(package-selected-packages
   (quote
	(magit org company-anaconda anaconda-mode company helm-org doom-themes doom-modeline all-the-icons dashboard treemacs-projectile helm-projectile projectile helm treemacs treemacs-icons-diredmacs flycheck-pos-tip flycheck undo-tree smartparens volatile-highlights golden-ratio yasnippet-snippets yasnippet use-package nyan-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-initialize)

