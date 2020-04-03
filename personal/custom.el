(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   (quote
    ("274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" default)))
 '(enable-recursive-minibuffers t)
 '(fci-rule-color "#383838")
 '(global-hl-line-mode nil)
 '(ibuffer-default-shrink-to-minimum-size nil)
 '(ibuffer-display-summary t)
 '(ibuffer-elide-long-columns nil)
 '(ibuffer-eliding-string "..")
 '(ibuffer-formats
   (quote
    ((mark modified read-only locked " "
           (name 50 28 :left :elide)
           " "
           (size 9 -1 :right)
           " "
           (mode 16 16 :left :elide)
           " " filename-and-process)
     (mark " "
           (name 16 -1)
           " " filename))))
 '(ibuffer-truncate-lines 0)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (kubernetes-helm kubernetes highlight-indentation ac-php php-mode ac-emoji company-emoji emoji-display iflipb 0xc x509-mode indent-tools zoom lua-mode nginx-mode keychain-environment treemacs 0blayout w3 w3m salt-mode dracula-theme terraform-mode tabbar pkgbuild-mode groovy-mode dockerfile-mode monokai-alt-theme color-theme monokai-theme counsel swiper ivy helm-projectile helm exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens operate-on-number move-text magit projectile imenu-anywhere hl-todo guru-mode gitignore-mode gitconfig-mode git-timemachine gist expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major crux browse-kill-ring beacon anzu ace-window)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(set-frame-font " -xos4-xos4 Terminus-normal-normal-normal-*-18-*-*-*-c-80-iso10646-1")
                                        ;(enable-theme 'zenburn)

(setq prelude-flyspell nil)
;;(setq prelude-theme 'monokai)

(setq auto-mode-alist (cons '("\\.conf\\.erb$" . conf-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.vcl\\.erb$" . vcl-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.tpl$" . html-helper-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pp$" . puppet-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.playbook$" . yaml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.service$" . systemd-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.sls$" . yaml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.yml$" . yaml-mode) auto-mode-alist))
(global-set-key (kbd "C-.") 'dabbrev-expand)
;(global-set-key (kbd "C-.") 'company-complete)
                                        ;(add-to-list 'load-path)(("~/.emacs.d/elpa/dracula-theme-20190107.2016"))

;; Dracula theme - current favorite
(add-to-list 'load-path "~/.emacs.d/elpa/dracula-theme-20190107.2016")
(load-theme 'dracula)

                                        ;(global-set-key (kbd "C-DEL") 'dired-up-directory )

;; popup menu shortcut
(define-key global-map (kbd "C-ø")
  (lambda ()
    (interactive)
    (x-popup-menu (list '(0 0) (selected-frame))
                  (mouse-menu-bar-map))))

;;
(desktop-save-mode)
;;
(server-start)
;;
(defun add-mode-line-dirtrack ()
  (add-to-list 'mode-line-buffer-identification
               '(:propertize (" " default-directory " ") face dired-directory)))
(add-hook 'shell-mode-hook 'add-mode-line-dirtrack)
 (global-set-key (kbd "<C-tab>") 'iflipb-next-buffer)
   (global-set-key
    (if (featurep 'xemacs) (kbd "<C-iso-left-tab>") (kbd "<C-S-iso-lefttab>"))
     'iflipb-previous-buffer)
