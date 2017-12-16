;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ivy
     python
     auto-completion
     ;; better-defaults
     emacs-lisp
     c-c++
     ;; haskell
     git
     ycmd
     ;; markdown
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     scala
     ;; version-control
     common-lisp
     clojure
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      base16-theme
                                      rtags
                                      cmake-ide
                                      helm-etags-plus
                                      traad
                                      ace-jump-mode
                                      all-the-icons
                                      )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(base16-ocean
                         spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Droid Sans Mono"
                               :size 15
                               :weight normal
                               :width regular
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers '(:relative nil
                                         :disabled-for-modes text-mode
                                         )

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (set-face-attribute 'vertical-border
                      nil
                      :foreground "#282a2e")

  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  ;; (set-face-attribute 'spaceline-evil-normal nil :foreground "black")
  (set-face-attribute 'spaceline-evil-normal nil :background "#BF616A")
  (set-face-attribute 'spaceline-evil-insert nil :background "#95E454")
  (spaceline-emacs-theme)
  (set-window-fringes nil 0 0)
  (define-key evil-insert-state-map (kbd "C-v") 'evil-paste-after)

  (setq ycmd-server-command '("python3" "/home/harindu/ycmd/ycmd"))
  (set-variable 'ycmd-global-config "/home/harindu/.ycm_extra_conf.py")

  (setq inferior-lisp-program "/home/harindu/Downloads/ccl/lx86cl64")
  ;; (setq compilation-scroll-output 'first-error)
  (setq compilation-scroll-output t)
  ;; (split-window-right)
  (rtags-enable-standard-keybindings evil-normal-state-map "SPC m r")
  (define-key evil-normal-state-map (kbd "SPC p c") 'custom-project-compile)
  (define-key evil-normal-state-map (kbd "SPC p /") 'maybe-projectile-ag)
  (define-key key-translation-map (kbd "<C-down-mouse-1>") (kbd "<down-mouse-2>"))
  (setq split-height-threshold 60)
  (setq split-width-threshold 80)

  (spacemacs/set-leader-keys
    "jj" 'evil-ace-jump-word-mode
    "ww" 'ace-window
    "mgo" 'ff-find-other-file
    "ms" 'custom-goto
    )
  (global-set-key (kbd "M-p") 'ace-window)
  (define-key compilation-mode-map (kbd "M-p") 'ace-window)
  (define-key evil-normal-state-map (kbd ",v") 'evil-window-vsplit)
  (define-key evil-normal-state-map (kbd ",s") 'custom-goto)
  (define-key evil-normal-state-map (kbd ",go") 'ff-find-other-file)
  (defun terminal(&optional path)
    (interactive)
    (if path
        (progn
          (let ((expanded-path (replace-regexp-in-string "~" "/home/harindu" path)))
            (call-process "xfce4-terminal" nil 0 nil (concat "--working-directory=" expanded-path))))
      (call-process "xfce4-terminal" nil 0 nil (concat "--working-directory=" default-directory))
      ))
  (evil-define-command evil-terminal-hanlder (arg)
    (interactive "<a>")
    (terminal arg))

  (evil-ex-define-cmd "terminal" 'evil-terminal-hanlder)
  (setq org-agenda-files (list "/home/harindu/org/todo.org" "/home/harindu/org/project.org"))
  (setq org-projectile-file "/home/harindu/org/project.org")

  (with-eval-after-load 'ivy
    (setq ivy-initial-inputs-alist nil)
    )
  (global-set-key (kbd "C-x C-s") 'save-compile)

  (setq compilation-window-height 0)
   ;; from enberg on #emacs
  (setq compilation-finish-function
        (lambda (buf str)
          (if (null (string-match ".*exited abnormally.*" str))
              ;;no errors, make the compilation window go away in a few seconds
              (progn
                (run-at-time
                 "0.5 sec" nil 'delete-windows-on
                 (get-buffer-create "*compilation*"))
                (message "No Compilation Errors!"))
            (progn
              (evil-window-down 1)
              ;; (switch-to-buffer "*compilation*")
              (evil-window-set-height 20)
              )
            )))

  (flycheck-define-checker
      python-mypy ""
      :command ("mypy"
                "--ignore-missing-imports" "--fast-parser"
                "--python-version" "3.6"
                source-original)
      :error-patterns
      ((error line-start (file-name) ":" line ": error:" (message) line-end))
      :modes python-mode)

  (add-to-list 'flycheck-checkers 'python-mypy t)
  (flycheck-add-next-checker 'python-flake8 'python-mypy t)
  (setq clojure-enable-fancify-symbols t)
  )
(defun maybe-projectile-ag()
  (interactive)
  (if (projectile-project-p)
      (counsel-projectile-ag)
    (counsel-ag)))
(defun custom-project-compile ()
  (interactive)
  (if (c-major-mode-is 'c++-mode)
      (cmake-project-run)
    (projectile-compile-project))
  )
(defun custom-goto()
  (interactive)
  (let* ((bounds (if (use-region-p)
                     (cons (region-beginning) (region-end))
                   (bounds-of-thing-at-point 'symbol)))
         (symbol  (buffer-substring-no-properties (car bounds) (cdr bounds))))
    (ff-find-other-file t) (swiper symbol )(print symbol)))

(defun cmake-project-run()
  (interactive)
  (setq-local default-directory (concat (projectile-project-root) "cmake-build-" cmake-project-mode))
  (print default-directory)
  (let* ((default-cmd (or projectile-project-run-cmd "make run"))
         (compilation-cmd  (if  cmake-project-ask (read-string  "Run command: " default-cmd) default-cmd)))
    (compile compilation-cmd))
  (setq-local default-directory (projectile-project-root))

  )


(defun cmake-project-compile()
  (interactive)
  (setq-local default-directory (concat (projectile-project-root) "cmake-build-" cmake-project-mode))
  (unless (file-exists-p default-directory)
    (make-directory default-directory))
  (print default-directory)
  (setq cmake-compile-command "make")
  (let* ((default-cmd (or cmake-compile-command "make"))
         (compilation-cmd  (if  cmake-project-ask (read-string  "Compile command: " default-cmd) default-cmd)))

    (compile compilation-cmd))
  (setq-local default-directory (projectile-project-root))

  )

(defvar cmake-project-mode "debug")
(defvar cmake-project-ask nil)

(defun save-compile ()
  (interactive)
  (save-buffer)
  (when (string= (substring mode-name 0 3) "C++")
    (cmake-project-compile))
  )


(defun cmake-project-reload-cmake()
  (interactive)
  (setq-local default-directory (concat (projectile-project-root) "cmake-build-" cmake-project-mode))
  (unless (file-exists-p default-directory)
    (make-directory default-directory))
  (print default-directory)
  (let* ((default-cmd (or projectile-project-compilation-cmd (concat "cmake -DCMAKE_BUILD_TYPE=" (capitalize cmake-project-mode) " ..")))
         (compilation-cmd  (if  cmake-project-ask (read-string  "Compile command: " default-cmd) default-cmd)))

    (compile compilation-cmd))
  (setq-local default-directory (projectile-project-root))
  )

(defun cmake-project-switch-mode ()
  (interactive)
  (if (string-equal cmake-project-mode "debug")
      (setq cmake-project-mode "release")
    (setq cmake-project-mode "debug"))
  (cmake-project-reload-cmake))


;;;###autoload
(defun projectile-compile-project (arg &optional dir)
  "Run project compilation command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG."
  (interactive "P")
  (let* ((project-root (projectile-project-root))
         (default-directory (or dir (projectile-compilation-dir)))
         (default-cmd (projectile-compilation-command default-directory))
         (compilation-cmd (projectile-maybe-read-command arg default-cmd "Compile command: ")))
    (puthash default-directory compilation-cmd projectile-compilation-cmd-map)
    (save-some-buffers (not compilation-ask-about-save)
                       (lambda ()
                         (projectile-project-buffer-p (current-buffer)
                                                      project-root)))
    (if (fboundp projectile-compilation-cmd)
        (projectile-run-compilation projectile-compilation-cmd)
      (projectile-run-compilation compilation-cmd))))


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common
   ((t
     (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection
   ((t
     (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(custom-safe-themes
   (quote
    ("78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "5a7830712d709a4fc128a7998b7fa963f37e960fd2e8aa75c76f692b36e6cf3c" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(emms-player-vlc-parameters (quote ("--intf=rc" "--no-video")))
 '(evil-want-Y-yank-to-eol nil)
 '(exec-path-from-shell-check-startup-files nil)
 '(fringe-mode 0 nil (fringe))
 '(global-vi-tilde-fringe-mode t)
 '(neo-autorefresh t)
 '(neo-force-change-root t)
 '(neo-theme (quote icons))
 '(neo-window-width 25 t)
 '(package-selected-packages
   (quote
    (helpful inflections edn multiple-cursors paredit peg cider queue clojure-mode slime-company slime common-lisp-snippets virtualenvwrapper powerline org-category-capture dash-functional projectile packed memoize avy iedit smartparens f evil goto-chg dash helm helm-core async org-plus-contrib hydra s noflet ensime sbt-mode scala-mode intero hlint-refactor hindent haskell-snippets flycheck-haskell company-ghci company-ghc ghc haskell-mode company-cabal cmm-mode ox-twbs org-projectile org-present org-pomodoro alert log4e gntp org-download htmlize gnuplot all-the-icons-dired spaceline-all-the-icons all-the-icons-ivy all-the-icons ace-jump-mode ag helm-etags-plus counsel-gtags flycheck-clang-tidy anaconda-mode pythonic traad flyspell-correct-ivy flyspell-correct auto-dictionary rtags cmake-ide levenshtein pos-tip flycheck ycmd request-deferred deferred gitignore-mode magit magit-popup git-commit with-editor company yasnippet auto-complete wgrep smex ivy-hydra counsel-projectile counsel swiper ivy yapfify ws-butler winum which-key web-mode volatile-highlights vi-tilde-fringe uuidgen use-package unfill toc-org tagedit spaceline smeargle slim-mode scss-mode sass-mode restart-emacs rainbow-delimiters pyvenv pytest pyenv-mode py-isort pug-mode popwin pip-requirements persp-mode pcre2el paradox orgit org-bullets open-junk-file neotree mwim move-text magit-gitflow macrostep lorem-ipsum live-py-mode linum-relative link-hint less-css-mode info+ indent-guide hy-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gtags helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link ggtags fuzzy flycheck-ycmd flycheck-pos-tip flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-leader evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-commentary evil-args evil-anzu emmet-mode elisp-slime-nav dumb-jump disaster diff-hl define-word cython-mode company-ycmd company-web company-statistics company-c-headers company-anaconda column-enforce-mode cmake-mode clojure-snippets clj-refactor clean-aindent-mode clang-format cider-eval-sexp-fu base16-theme auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(projectile-tags-command "ctags-exuberant -Re -f \"%s\" %s")
 '(safe-local-variable-values
   (quote
    ((eval let
           ((root
             (projectile-project-root)))
           (setq-local projectile-project-compilation-cmd "python2 /home/harindu/projects/launcher/ui.py"))
     (eval let
           ((root
             (projectile-project-root)))
           (setq-local cmake-ide-build-dir
                       (concat
                        (projectile-project-root)
                        "cmake-build-" cmake-project-mode))
           (setq-local projectile-project-run-cmd "make run")))))
 '(slime-backend "/home/harindu/Downloads/slime-2.20/swank-loader.lisp" t)
 '(slime-company-completion (quote fuzzy) t)
 '(slime-complete-symbol*-fancy t t)
 '(slime-complete-symbol-function (quote slime-fuzzy-complete-symbol) t)
 '(speedbar-default-position (quote right))
 '(speedbar-use-images nil)
 '(speedbar-verbosity-level 0))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tabbar-button ((t (:inherit tabbar-default :foreground "lightgray" :box (:line-width 1 :color "#282A2E" :style released-button))))))
