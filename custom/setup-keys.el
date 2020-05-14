(provide 'setup-keys)

;;;; hs-minor-mode 
;; Para ocultar bloque de codigo, desde un parentecis
(global-set-key (kbd "C-c h") 'hs-toggle-hiding)

;;;; ibuffer
;; modificar la tecla de ibuffer, reemplazando buffer
;;(global-set-key (kbd "C-x C-b") 'ibuffer)

;;;; shell
;; modificar la tecla C-t, para abrir la shell
(global-set-key (kbd "C-t") 'shell)
