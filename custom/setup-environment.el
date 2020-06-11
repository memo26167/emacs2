(provide 'setup-environment)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GROUP: Environment -> Font           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'default-frame-alist
                       '(font . "Hack-12"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GROUP: Environment -> modeline ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Muestra la bateria restante
(display-battery-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: dashboard                   ;;
;; GROUP: Environment -> Initialization ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-items '((recents  . 5)
                        (projects . 5)
                        (agenda . 5)))
  (setq show-week-agenda-p t)
  (setq dashboard-startup-banner 4);; Se puede cambiar a otros banners
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: nyan-mode          ;;
;; GROUP: Environment -> Nyan  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Un lindo Nyan-cat

(use-package nyan-mode
   :defer t
   :custom
   (nyan-cat-face-number 4) ;; Para terminal
   (nyan-animate-nyancat t)
   (nyan-wavy-trail t)
   (nyan-bar-length 20)
   :hook
   (after-init . nyan-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: parrot               ;;
;; GROUP: Environment -> Parrot  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Un lindo Parrot

(use-package parrot
  :custom
  (parrot-num-rotations nil)
  :config
  (parrot-set-parrot-type 'science)
  (parrot-mode))

;;(require 'parrot)
;;(parrot-set-parrot-type 'science)
;; Para que no deje de moverse
;;(setq parrot-num-rotations nil)
;; To see the party parrot in the modeline, turn on parrot mode:
;;(parrot-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: Doom-Modeline                        ;;
;; GROUP: Environment-> modeline -> Doom-Modeline;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Una linea más bonita
(use-package doom-modeline
:ensure t
:defer t
:init (add-hook 'after-init-hook #'doom-modeline-init))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: Doom-Themes                          ;;
;; GROUP: Environment-> modeline -> Doom-Themes  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Temas Doom
(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)

  ;; Set treemacs theme
  (setq doom-themes-treemacs-theme "doom-colors")
  (doom-themes-treemacs-config)

  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: golden-ratio                         ;;
;;                                               ;;
;; GROUP: Environment -> Windows -> Golden Ratio ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Aumenta el tamaño del buffer seleccionado
;; A continuacion se excluyen los modos en los que no funcionara

(use-package golden-ratio
  :init
  (progn
    (setq golden-ratio-exclude-modes '("ediff-mode"
                                   "gud-mode"
                                   "gdb-locals-mode"
                                   "gdb-registers-mode"
                                   "gdb-breakpoints-mode"
                                   "gdb-threads-mode"
                                   "gdb-frames-mode"
                                   "gdb-inferior-io-mode"
                                   "gud-mode"
                                   "gdb-inferior-io-mode"
                                   "gdb-disassembly-mode"
                                   "gdb-memory-mode"
                                   "magit-log-mode"
                                   "magit-reflog-mode"
                                   "magit-status-mode"
                                   "IELM"
                                   "dired-mode"
                                   "treemacs-mode"
                                   "helm-mode"))
                                   ;;"undo-tree-mode"
  (golden-ratio-mode 1)
  )
)
