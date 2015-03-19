;; ================================ Auto-complete ==============================

(defvar features-path "~/.emacs.d/el-get/")

(add-to-list 'load-path (concat features-path "popup"))
(add-to-list 'load-path (concat features-path "auto-complete"))
(require 'popup)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories
             (concat features-path "auto-complete/dict"))
(ac-config-default)
(global-auto-complete-mode 1)

(setq-default ac-sources (add-to-list 'ac-sources 'ac-source-dictionary)
              ac-auto-start 2
              ac-ignore-case nil)

;; ================================ Snippets  ==================================

(add-to-list 'load-path (concat features-path "yasnippet"))
(require 'yasnippet)

(yas-global-mode 1)
(add-to-list 'ac-sources 'ac-source-yasnippet)

;; ================================== Linum+ ===================================

(add-to-list 'load-path (concat features-path "linum-ex"))
(require 'linum-ex)

(setq linum-format " %i ")
(global-linum-mode 1)

;; ================================== IDO ======================================

(add-to-list 'load-path (concat features-path "ido-hacks"))
(add-to-list 'load-path (concat features-path "flx"))
(require 'flx-ido)
(require 'ido-hacks)

(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

(setq ido-enable-flex-matching t
      ido-use-faces t
      gc-cons-threshold 20000000)

;; =========================== Multiple-cursors ================================

(add-to-list 'load-path (concat features-path "multiple-cursors"))
(require 'multiple-cursors)

(global-set-key (kbd "C-x C-m") 'mc/edit-lines)
(global-set-key (kbd "C-.") 'mc/mark-next-like-this)
(global-set-key (kbd "C-,") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-,") 'mc/mark-all-like-this)

;; ================================ Autopair ===================================

(electric-pair-mode 1)

;; ============================== Git-gutter ===================================

(add-to-list 'load-path (concat features-path "git-gutter"))
(require 'git-gutter)

(git-gutter:linum-setup)
(global-git-gutter-mode +1)

(add-to-list 'git-gutter:update-hooks 'focus-in-hook)

(set-face-foreground 'git-gutter:modified "Violet red")
(set-face-foreground 'git-gutter:added "DodgerBlue2")
(set-face-foreground 'git-gutter:deleted "firebrick2")

;; ================================ Bookmark ===================================

(require 'bookmark)
(global-set-key (kbd "C-x r b")
    (lambda ()
      (interactive)
      (bookmark-jump
       (ido-completing-read "Jump to bookmark: " (bookmark-all-names)))))

(setq bookmark-save-flag t)

(global-set-key (kbd "C-x v")         'bookmark-set)
(global-set-key (kbd "s-SPC")         'bookmark-save)

;; ==================================== Smex ===================================

(add-to-list 'load-path (concat features-path "smex"))
(require 'smex)

(smex-initialize)
(smex-auto-update 600)

;; ========================= To be continued... ================================
