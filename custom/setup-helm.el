(provide 'setup-helm)

;; HELM

(use-package helm
  :ensure t
  :config
  (require 'helm-config)
  (helm-mode 1)
  (setq helm-kill-ring-threshold 3)
  ;;Ventanas de HELM siempre abajo y de tamaño fijo
  (add-to-list 'display-buffer-alist
                    `(,(rx bos "*helm" (* not-newline) "*" eos)
                         (display-buffer-in-side-window)
                         (inhibit-same-window . t)
                         (window-height . 0.25)))
  :bind (("M-x" . helm-M-x)            ;; Reemplaza el M-x normal
         ("M-y" . helm-show-kill-ring) ;; copypaste que almacena cosas
         ("C-x C-b" . helm-mini)       ;; Menu de Buffers
         ("C-x C-f" . helm-find-files));; Buscar archivos
  )


;; Helm Projectile

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on)
  (setq projectile-switch-project-action 'helm-projectile)
  (setq projectile-completion-system 'helm)
)

;; Helm Org

(global-set-key (kbd "C-c c") 'helm-org-capture-templates)
(use-package helm-org
  :ensure t
  :after (helm)
  :config
  (require 'helm-org)
  (add-to-list 'helm-completing-read-handlers-alist '(org-capture . helm-org-completing-read-tags))
  (add-to-list 'helm-completing-read-handlers-alist '(org-set-tags . helm-org-completing-read-tags))
)

