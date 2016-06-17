;;;;;;;以下代码由tumashu大神原创，末学仅是复制。由于大大未将该段代码加入cfs ，故末学先行复制以免丢失。详见https://github.com/tumashu/chinese-fonts-setup
(defvar cfs-line-spacing-alist nil)
(setq cfs-line-spacing-alist
      '((9  . 0.3)
        (10 . 0.3)
        (11.5 . 0.2)
        (12 . 0.8)
        (14 . 0.5)
        (16 . 0.2)
        (18 . 0.2)
        (20 . 1.0)
        (22 . 0.2)
        (24 . 0.2)
        (26 . 0.2)
        (28 . 0.2)
        (30 . 0.2)
        (32 . 0.2)))

(defun cfs-line-spacing-setup (fontsizes-list)
  (let ((fontsize (car fontsizes-list))
        (line-spacing-alist (copy-list cfs-line-spacing-alist)))
    (dolist (list line-spacing-alist)
      (when (= fontsize (car list))
        (setq line-spacing-alist nil)
        (setq-default line-spacing (cdr list))))))

(add-hook 'cfs-set-font-finish-hook #'cfs-line-spacing-setup)

;;;;;;;;;;
