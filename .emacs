(setq inhibit-splash-screen t)
(delete-selection-mode 1)

(require 'erc)
(setq erc-hide-list '("JOIN" "PART" "QUIT"))

(set-register ?e (cons 'file "~/.emacs"))

;; Don't create backup files
(setq make-backup-files nil)
(setq auto-save-default nil) ; stop creating those #autosave# files

(require 'ido)
(ido-mode t)

(require 'package)
;; (add-to-list 'package-archives
;;              '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(add-to-list 'load-path
                "~/.emacs.d/elpa/yasnippet")
   (require 'yasnippet)
   (yas-global-mode 1)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indent) 
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(require 'flymake-hlint)
(add-hook 'haskell-mode-hook 'flymake-hlint-load)

(fset 'yes-or-no-p 'y-or-n-p)
(global-linum-mode 1)
(define-key global-map (kbd "RET") 'newline-and-indent)
(setq next-line-add-newlines t)

(eval-after-load 'haskell-mode
          '(define-key haskell-mode-map [f8] 'haskell-navigate-imports))

(setq load-path (cons  "C:/Program Files/erl6.4/lib/tools-2.7.2/emacs"
      load-path))
(setq erlang-root-dir "C:/Program Files/erl6.4")
(setq exec-path (cons "C:/Program Files/erl6.4/bin" exec-path))
(require 'erlang-start)
(put 'erase-buffer 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
