(provide 'setup-editing)

;;; TAB se convierte en 4 espacios
(setq-default tab-width 4)
;;; Activar line-wrapping
(setq-default global-visual-line-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package: volatile-highlights          ;;
;;                                       ;;
;; GROUP: Editing -> Volatile Highlights ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mostrar cambios por Deshacer

(use-package volatile-highlights
  :ensure t
  :defer t
  :diminish
  :commands
  (volatile-highlights-mode)
  :hook
  (after-init . volatile-highlights-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package: smartparens	                 ;;
;;                                       ;;
;; GROUP: Editing -> SmartParens         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Incluye caracteristicas para pares de caracteres, por ejemplo, parentesis

(use-package smartparens-config
  :ensure smartparens
  :config
  (progn  (require 'smartparens-config)
		  )
  :hook ((c-mode python-mode latex-mode) . smartparens-mode)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package: undo-tree                  ;;
;;                                     ;;
;; GROUP: Editing -> Undo -> Undo Tree ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Arbol de DesHacer y ReHacer

(use-package undo-tree
  :ensure t
  :diminish undo-tree-mode
  :config
  (global-undo-tree-mode)
  )

(defun undo-tree-split-at-bottom (original-function &rest args)
  "Split undo-tree at bottom"
  (let ((split-height-threshold 0)
        (split-width-threshold nil))
    (apply original-function args)))

(advice-add 'undo-tree-visualize :around #'undo-tree-split-at-bottom)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Minor mode Folding                 ;;
;;                                    ;;
;; GROUP: Editing -> hs-minor-mode    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Para ocultar bloques de codigo
(add-hook 'c-mode-common-hook   'hs-minor-mode)
;; Se modifican las teclas en keys

