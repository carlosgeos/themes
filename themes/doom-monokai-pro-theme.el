;; doom-monokai-pro-theme.el --- Port of Monokai Pro -*- no-byte-compile: t; -*-
(require 'doom-themes)

(defgroup doom-monokai-pro-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(defcustom doom-monokai-pro-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-monokai-pro-theme
  :type '(choice integer boolean))

(def-doom-theme doom-monokai-pro
  "A port of VS Code's Monokai Pro"

  ;; name        gui       256       16
  ((bg         '("#2B292E" nil       nil          ))
   (bg-alt     '("#221F22" nil       nil          ))
   (base0      '("#0D0D0D" "black"   "black"      ))
   (base1      '("#1B1B1B" "#1B1B1B"              ))
   (base2      '("#212122" "#212122"              ))
   (base3      '("#2B2B2B" "#2B2B2B" "brightblack"))
   (base4      '("#3F4040" "#3F4040" "brightblack"))
   (base5      '("#5C5E5E" "#5C5E5E" "brightblack"))
   (base6      '("#757878" "#757878" "brightblack"))
   (base7      '("#969896" "#969896" "brightblack"))
   (base8      '("#FCFCFA" "#FCFCFA" "white"      ))
   (fg         '("#939293" "#939293" "white"))
   (fg-alt     '("#A3A2A3" "#A3A2A3" "white"))

   (grey       '("#727072" "#727072" "brightblack"))
   (red        '("#CC6666" "#CC6666" "red"))
   (orange     '("#FC9867" "#FC9867" "orange"))
   (green      '("#A9DC76" "#A9DC76" "green"))
   (teal       green)
   (yellow     '("#FFD866" "#FFD866" "yellow"))
   (blue       '("#78DCE8" "#78DCE8" "blue"))
   (dark-blue  '("#81A2BE" "#81A2BE" "blue"))
   (magenta    '("#FF6188" "#FF6188" "violet"))
   (violet     '("#AB9DF2" "#AB9DF2" "violet"))
   (cyan       blue)
   (dark-cyan  dark-blue)

   ;; face categories
   (highlight      base8)
   (vertical-bar   (doom-lighten bg 0.1))
   (selection      `(,(car (doom-lighten bg 0.1)) ,@(cdr base4)))
   (builtin        blue)
   (comments       grey)
   (doc-comments   yellow)
   (constants      violet)
   (functions      green)
   (keywords       magenta)
   (methods        green)
   (operators      magenta)
   (type           blue)
   (strings        yellow)
   (variables      base8)
   (numbers        violet)
   (region         selection)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    fg-alt)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (modeline-bg     bg-alt)
   (modeline-bg-alt `(,(car bg) ,@(cdr base1)))
   (modeline-fg     fg)
   (modeline-fg-alt comments)
   (-modeline-pad
    (when doom-monokai-pro-padded-modeline
      (if (integerp doom-monokai-pror-padded-modeline)
          doom-monokai-pro-padded-modeline
        4))))

  ;; --- faces ------------------------------
  (
   ;; Centaur tabs
   (centaur-tabs-selected-modified :inherit 'centaur-tabs-selected :foreground yellow)
   (centaur-tabs-unselected-modified :inherit 'centaur-tabs-unselected :foreground yellow)
   (centaur-tabs-active-bar-face :background yellow)
   (centaur-tabs-modified-marker-selected :inherit 'centaur-tabs-selected :foreground base8)
   (centaur-tabs-modified-marker-unselected :inherit 'centaur-tabs-unselected :foreground base8)

   ;; Doom modeline
   (doom-modeline-bar :background yellow)
   (doom-modeline-buffer-path       :foreground blue :bold bold)
   (doom-modeline-buffer-major-mode :inherit 'doom-modeline-buffer-path)

   ((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground yellow :bold bold)

   ;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground violet)
   (rainbow-delimiters-depth-2-face :foreground blue)
   (rainbow-delimiters-depth-3-face :foreground orange)
   (rainbow-delimiters-depth-4-face :foreground green)
   (rainbow-delimiters-depth-5-face :foreground violet)
   (rainbow-delimiters-depth-6-face :foreground yellow)
   (rainbow-delimiters-depth-7-face :foreground blue)

   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-alt :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt))))

  ;; --- variables --------------------------
  ;; ()
  )

(provide 'doom-monokai-pro-theme)
;;; doom-monokai-pro-theme.el ends here