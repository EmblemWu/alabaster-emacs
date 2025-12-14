;;; alabaster-dark-theme.el -- Alabaster dark theme for Emacs.

;; Author: Chris Etheridge (theme originally by Nikita Tonsky)
;; URL: https://github.com/chris-etheridge/alabaster-emacs
;; Package-Version: 20160525.0001
;; Version: 1.0

;;; Commentary:
;;
;; Alabaster is a theme originally created by Nikita Tonsky for Light Table.
;; This dark variant is based on the VS Code Alabaster dark theme:
;; <https://github.com/suhailskhan/vscode-theme-alabaster>

(deftheme alabaster-dark
  "Alabaster dark skin.")

(let ((bg "#1F1F1F")
      (bg-alt "#181818")
      (bg-hl "#202020")
      (fg "#CCCCCC")
      (fg-alt "#9D9D9D")
      (fg-subtle "#6E7681")
      (border "#2B2B2B")
      (cursor "#CCCCCC")
      (selection "#0078D4")
      (match "#9E6A03")
      (secondary "#BB8009")
      (error "#F85149")
      (warning "#9E6A03")
      (success "#2EA043")
      (blue "#61AFEF")
      (green "#98C379")
      (purple "#BF79C3")
      (comment "#E06C75")
      (punct "#737C8C"))
  (custom-theme-set-faces
   'alabaster-dark
   ;; Basics
   `(default ((t (:background ,bg :foreground ,fg))))
   `(fixed-pitch ((t (:inherit default))))
   `(variable-pitch ((t (:inherit default))))
   `(cursor ((t (:background ,cursor))))
   `(fringe ((t (:background ,bg-alt :foreground ,fg-subtle))))
   `(vertical-border ((t (:foreground ,border))))
   `(window-divider ((t (:foreground ,border))))
   `(window-divider-first-pixel ((t (:foreground ,border))))
   `(window-divider-last-pixel ((t (:foreground ,border))))
   `(line-number ((t (:background ,bg-alt :foreground ,fg-subtle))))
   `(line-number-current-line ((t (:background ,bg-hl :foreground ,fg :weight semi-bold))))
   `(linum ((t (:inherit line-number))))
   `(linum-highlight-face ((t (:inherit line-number-current-line))))
   `(minibuffer-prompt ((t (:foreground ,blue :weight bold))))
   `(link ((t (:foreground "#4DAAFC" :underline t))))
   `(error ((t (:foreground ,error :weight bold))))
   `(warning ((t (:foreground ,warning :weight bold))))
   `(success ((t (:foreground ,success :weight bold))))

   ;; Frame
   `(header-line ((t (:background ,bg-alt :foreground ,fg
                                  :box (:line-width -1 :color ,border)))))
   `(mode-line ((t (:background ,bg-alt :foreground ,fg
                                :box (:line-width -1 :color ,border)))))
   `(mode-line-inactive
     ((t (:inherit mode-line :background ,bg :foreground ,fg-alt
                   :box (:line-width -1 :color ,border) :weight light))))

   ;; Parens
   `(show-paren-match ((t (:background ,bg-hl :foreground ,fg :weight bold))))
   `(show-paren-mismatch ((t (:foreground ,fg :background ,error :weight bold))))

   ;; Highlighting
   `(hl-line ((t (:background ,bg-hl))))
   `(highlight ((t (:background ,match :foreground ,fg))))
   `(highlight-symbol-face ((t (:background ,bg-hl :foreground ,fg))))
   `(isearch ((t (:background ,match :foreground ,fg :weight bold))))
   `(lazy-highlight ((t (:background ,secondary :foreground ,fg))))
   `(match ((t (:background ,secondary :foreground ,fg))))
   `(region ((t (:background ,selection :foreground "#FFFFFF"))))
   `(secondary-selection ((t (:background ,secondary :foreground ,fg))))
   `(shadow ((t (:foreground ,fg-subtle))))

   ;; Font-lock (mapped from the VS Code dark variant)
   `(font-lock-builtin-face ((t (:foreground ,purple))))
   `(font-lock-comment-face ((t (:foreground ,comment))))
   `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-constant-face ((t (:foreground ,purple))))
   `(font-lock-doc-face ((t (:foreground ,green))))
   `(font-lock-doc-string-face ((t (:inherit font-lock-doc-face))))
   `(font-lock-function-name-face ((t (:foreground ,blue))))
   `(font-lock-keyword-face ((t (:foreground ,purple))))
   `(font-lock-preprocessor-face ((t (:foreground ,punct))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-type-face ((t (:foreground ,blue))))
   `(font-lock-variable-name-face ((t (:foreground ,fg))))
   `(font-lock-warning-face ((t (:foreground ,error :weight bold))))

   ;; Diff Mode (approximation of the VS Code diff styling)
   `(diff-file-header ((t (:weight bold :inherit diff-header))))
   `(diff-header ((t (:background ,bg-alt :foreground ,fg :box (:line-width -1 :color ,border)))))
   `(diff-added ((t (:background "#16351F" :foreground ,fg))))
   `(diff-removed ((t (:background "#3B1E22" :foreground ,fg))))
   `(diff-changed ((t (:background "#2B2B2B" :foreground ,fg))))
   `(diff-refine-change ((t (:background "#3C3C3C" :foreground ,fg))))

   ;; Magit (keep close to diff faces)
   `(magit-diff-file-header ((t (:weight bold :inherit diff-header))))
   `(magit-diff-hunk-header ((t (:inherit diff-header))))
   `(magit-diff-add ((t (:inherit diff-added))))
   `(magit-diff-del ((t (:inherit diff-removed))))
   `(magit-diff-none ((t (:inherit diff-context :foreground ,fg-alt))))
   `(magit-item-highlight ((t (:background ,bg-hl :foreground ,fg))))

   ;; web-mode
   `(web-mode-comment-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-tag-face ((t (:foreground ,blue))))
   `(web-mode-html-tag-bracket-face ((t (:foreground ,punct))))
   `(web-mode-html-attr-name-face ((t (:foreground ,fg))))
   `(web-mode-html-attr-equal-face ((t (:foreground ,punct))))
   `(web-mode-html-attr-value-face ((t (:inherit font-lock-string-face))))
   `(web-mode-string-face ((t (:inherit font-lock-string-face))))
   `(web-mode-current-element-highlight-face ((t (:background ,bg-hl))))

   ;; js2-mode
   `(js2-function-call ((t (:foreground ,blue))))
   `(js2-object-property ((t (:foreground ,fg))))
   `(js2-jsdoc-tag ((t (:foreground ,purple))))
   `(js2-jsdoc-type ((t (:foreground ,blue))))
   `(js2-jsdoc-value ((t (:foreground ,green))))
   `(js2-warning ((t (:underline (:style wave :color ,warning)))))
   `(js2-error ((t (:underline (:style wave :color ,error))))) ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'alabaster-dark)

;;; alabaster-dark-theme.el ends here
