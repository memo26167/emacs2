(provide 'setup-convenience)

;; GROUP: Convenience -> Linum
;; Muestra el numero de cada linea en una columna a la izquierda
;; pero solo en archivos de programacion
(add-hook 'prog-mode-hook 'linum-mode) 


;; GROUP: Convenience -> Whitespace

;; Cuando se crea espacio en blanco inutil, este espacio se resalta
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

;; Activar tecla para ver espacios
(global-set-key (kbd "C-c w") 'whitespace-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGES: projectile             ;;
;;                                  ;;
;; GROUP: Convenience -> Projectile ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package projectile
  :ensure t
  :config
  ;; Pueden añadirse más carpetas, ejemplo:
  ;;(setq projectile-project-search-path '("~/Projects/" "~/Desktop/"))
  (setq projectile-project-search-path '("~/Projects/"))
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
  (projectile-mode +1)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGES: Org-mode               ;;
;;                                  ;;
;; GROUP: Convenience -> Org-mode   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'org)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
;;(global-set-key (kbd "C-c c") 'org-capture)
(setq org-log-done t)
(setq org-agenda-files '("~/gtd/inbox.org"
                         "~/gtd/gtd.org"
                         "~/gtd/tickler.org"))
(setq org-capture-templates '(("t" "Inbox" entry
                               (file+headline "~/gtd/inbox.org" "Inbox")
                               "* TODO %i%?")
                              ("T" "Tickler" entry
                               (file+headline "~/gtd/tickler.org" "Tickler")
                               "* %i%? \n SCHEDULED: %^T")))
(setq org-refile-targets '(("~/gtd/gtd.org" :maxlevel . 2)
                           ("~/gtd/someday.org" :level . 1)
                           ("~/gtd/tickler.org" :maxlevel . 2)))
(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))



