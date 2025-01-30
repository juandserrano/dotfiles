(add-to-list 'default-frame-alist '(width . 100))
(add-to-list 'default-frame-alist '(height . 40))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(dashboard magit eshell-syntax-highlighting all-the-icons-dired all-the-icons projectile dap-mode lsp-mode company evil-collection which-key general evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq evil-want-keybinding nil)
(setq evil-vsplit-window-right t)
(setq evil-split-window-below t)
(evil-mode 1)
(setq evil-collection-mode-list '(dashboard dired ibuffer))
(evil-collection-init)

(use-package flycheck
  :ensure t
  :defer t
  :diminish
  :init (global-flycheck-mode))

;; (setq initial-buffer-choice (lambda () (dired "~/dev")))

(use-package dashboard
  :ensure t
  :init
  (setq initial-buffer-choice 'dashboard-open)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-startup-banner 'logo)
  (setq dashboard-items '((recents . 5)
			;;  (agenda . 5)
			;;  (bookmarks . 3)
			  (projects . 3)
			;;  (registers . 3)
			))
  (setq dashboard-modify-heading-icons '((recents . "file-text")
					 (bookmarks . "book")))
  :config
  (dashboard-setup-startup-hook))

(use-package projectile
  :diminish
  :config
  (projectile-mode 1))

(which-key-mode 1)
(setq which-key-side-window-location 'bottom
      which-key-sort-order #'which-key-key-order-alpha
      which-key-sort-uppercase-first nil
      which-key-max-display-columns nil
      which-key-min-display-lines 6
      which-key-side-window-slot -10
      which-key-allow-imprecise-window-fit t
      which-key-idle-delay 0.5
      which-key-separator " -> " )

(use-package general
 :config
 (general-evil-setup)
 (general-create-definer wizzi/leader-keys
   :states '(normal insert visual emacs)
   :keymaps 'override
   :prefix "SPC"
   :global-prefix "M-SPC")

 (wizzi/leader-keys
  "b" '(:ignore t :wk "buffer")
  "bb" '(switch-to-buffer :wk "Switch buffer")
  "bk" '(kill-this-buffer :wk "Kill this buffer")
  "bn" '(next-buffer :wk "Next buffer")
  "bp" '(previous-buffer :wk "Previous buffer")
  "br" '(revert-buffer :wk "Reload buffer")
  "bl" '(ibuffer :wk "Buffer list")

  "f" '(:ignore t :wk "File Operations")
  "ff" '(find-file :wk "Find File")
  "fd" '(dired-jump :wk "Dired")

  "h" '(:ignore t :wk "Help")
  "hf" '(describe-function :wk "Describe function")
  "hv" '(describe-variable :wk "Describe variable")

  "t" '(:ignore t :wk "Toggle")
  "tl" '(display-line-numbers-mode :wk "Toggle line numbers")
  "tt" '(visual-line-mode :wk "Toggle truncated lines")

  "tl" '(display-line-numbers-mode :wk "Toggle line numbers")
  "tt" '(visual-line-mode :wk "Toggle truncated lines")

  "s" '(save-buffer :wk "Save buffer")
  "q" '(quit-buffer :wk "Quit buffer")

  "xx" '(execute-extended-command :wk "M-X")))

(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-+") 'text-scale-increase)

(set-face-attribute 'default nil
		    :font "JetBrainsMono NF"
		    :height 110
		    :weight 'medium)
(set-face-attribute 'font-lock-comment-face nil
		    :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil
		    :slant 'italic)
(add-to-list 'default-frame-alist '(font . "JetBrainsMono NF-11"))

(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))
(use-package all-the-icons-dired
  :hook (dired-mode . (lambda () (all-the-icons-dired-mode t))))
(use-package eshell-syntax-highlighting
  :after esh-mode
  :config
  (eshell-syntax-highlighting-global-mode +1))
    

(global-display-line-numbers-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq ring-bell-function 'ignore)
(setq make-backup-files nil) ;; do not make backup files

(load-theme 'tango-dark t)
