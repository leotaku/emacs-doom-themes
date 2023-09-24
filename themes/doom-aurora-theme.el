;;; doom-aurora-theme.el --- Inspired by doom-one and vim-aurora -*- no-byte-compile: t; -*-

;;; Commentary:

;; Here are the links to my inspirations:
;;
;; * https://github.com/rafalbromirski/vim-aurora
;; * https://github.com/hlissner/emacs-doom-themes

(require 'doom-themes)

;;; Code:

(def-doom-theme doom-aurora
  "A dark theme inspired by doom-one and vim-aurora"
  ;; name        default   256 16
  ((bg         '("#151718" nil nil ))
   (bg-alt     '("#21242b" nil nil ))
   (base0      '("#1B2229" nil nil ))
   (base1      '("#1c1f24" nil nil ))
   (base2      '("#202328" nil nil ))
   (base3      '("#23272e" nil nil ))
   (base4      '("#3f444a" nil nil ))
   (base5      '("#5B6268" nil nil ))
   (base6      '("#73797e" nil nil ))
   (base7      '("#9ca0a4" nil nil ))
   (base8      '("#DFDFDF" nil nil ))
   (fg         '("#e7e7e7" nil nil ))
   (fg-alt     '("#5B6268" nil nil ))

   (grey       base4)
   (red        '("#ff4040" nil nil ))
   (orange     '("#ff9326" nil nil ))
   (green      '("#9ceb4f" nil nil ))
   (teal       '("#55dbbe" nil nil ))
   (yellow     '("#ffcb65" nil nil ))
   (blue       '("#51afef" nil nil ))
   (dark-blue  '("#2257A0" nil nil ))
   (magenta    '("#c678dd" nil nil ))
   (violet     '("#a9a1e1" nil nil ))
   (cyan       '("#46D9FF" nil nil ))
   (dark-cyan  '("#5699AF" nil nil ))

   ;; face categories -- required for all themes
   (highlight      blue)
   (vertical-bar   (doom-darken base1 0.1))
   (selection      dark-blue)
   (builtin        magenta)
   (comments       base5)
   (doc-comments   (doom-lighten base5 0.25))
   (constants      violet)
   (functions      magenta)
   (keywords       blue)
   (methods        cyan)
   (operators      blue)
   (type           yellow)
   (strings        green)
   (variables      (doom-lighten magenta 0.4))
   (numbers        orange)
   (region         bg-alt)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    magenta)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (modeline-pad   nil)
   (modeline-fg     nil)
   (modeline-fg-alt base5)

   (modeline-bg
    `(,(doom-darken (car bg-alt) 0.15) ,@(cdr base0)))
   (modeline-bg-l
    `(,(doom-darken (car bg-alt) 0.1) ,@(cdr base0)))
   (modeline-bg-inactive   `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg-alt)))
   (modeline-bg-inactive-l `(,(car bg-alt) ,@(cdr base1))))

  ;; --- extra faces ------------------------
  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground fg)

   (font-lock-comment-face
    :foreground comments)
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments)

   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if modeline-pad `(:line-width ,modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if modeline-pad `(:line-width ,modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis
    :foreground highlight)

   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    :box (if modeline-pad `(:line-width ,modeline-pad :color ,modeline-bg-l)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    :box (if modeline-pad `(:line-width ,modeline-pad :color ,modeline-bg-inactive-l)))

   ;; Doom modeline
   (doom-modeline-bar :background highlight)
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground green :weight 'bold)

   ;; ivy-mode
   (ivy-current-match :background dark-blue :distant-foreground base0 :weight 'normal)

   ;; css-mode / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   ;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red)
   ((markdown-code-face &override) :background (doom-lighten base3 0.05))

   ;; org-mode
   (org-hide :foreground bg)
   (solaire-org-hide-face :foreground bg))

  ;; --- extra variables ---------------------
  ())

;;; doom-aurora-theme.el ends here
