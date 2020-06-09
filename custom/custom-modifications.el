;; Todo este archivo, y sus referencias, serán modificaciones del usuario
(provide 'custom-modifications)

;; Quita campanita
(setq ring-bell-function 'ignore)


;;;;; Cargar módulos ;;;;

;;; Para cargar paquetes mas facilmente
(require 'use-package)

;;; Configuraciones sobre el aspecto de Emacs, temas, colores, aspecto de la barra, etc.
(require 'setup-environment)

;;; Configuraciones sobre ambiente de Emacs que facilitan el trabajo en general
;; Ajustes a Projectile en setup-convenience.el, modificar search path
(require 'setup-convenience)

;;; Configuraciones sobre la edicion de texto como lenguajes de programacion, etc.
(require 'setup-editing)

;;; Configuraciones sobre HELM, paquete de autocompletacion
(require 'setup-helm)

;;; Configuraciones sobre visualizacion de archivos
(require 'setup-files)

;; Para añadir proyectos a Treemacs
;; "C-c C-p p"   o  "M-x treemacs-projectile"

;;; Cambio de teclas
(require 'setup-keys)

;;; Configuraciones para ayudar en la programacion
(require 'setup-programming)

;; Para ver si esta corriendo Flycheck, ingresar
;; C-c ! v
;; Para C/C++, instalar clang o gcc, se configura automaticamente
;; Para Python, instalar version de python e instalar flake 8 con pip
;; 	luego modificar con C-c ! v
;; Modificar el arrancador de python, para windows es python, para linux es python3
(setq flycheck-python-flake8-executable "python3")
(setq python-shell-interpreter "python3")
(setq-default flycheck-disabled-checkers '(python-pylint))
;; Para ver Backend de Company
;; M-x company-diag





