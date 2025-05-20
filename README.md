# Dotfiles

## Applications

- [Arc](https://arc.net/) : Browser
- [Zen](https://zen-browser.app/) : Browser
- [Chrome](https://www.google.com/chrome/) : Browser
- [Obsidian](https://obsidian.md/) : A powerful markdown editor for knowledge management and note-taking.
- [Ghostty](https://www.google.com/chrome/) : A terminal application designed for efficient command line usage.
- [Espanso](https://espanso.org/) : A text expander that helps you type faster by expanding snippets.
- [Raycast](https://www.raycast.com/) : A productivity tool that allows you to control your Mac and apps with commands.
- [DevToys](https://devtoys.app/) : A set of tools for developers to simplify their workflow.
- [Ollama](https://ollama.com/?source=post_page-----60cf3879bad8--------------------------------) : A platform for running AI models locally.
- [AppCleaner](https://freemacsoft.net/appcleaner/) : A utility for uninstalling applications on macOS cleanly.
- [hammerspoon](https://www.hammerspoon.org/) : A powerful automation tool for macOS using Lua scripting.
- [posting](https://posting.sh/) : The API client app in terminal.
- [Claude](https://www.claude.ai/) : Claude is an AI-powered chatbot that can help you write better emails, reports, and documentation.
- [OrbStack](https://www.orbstack.dev/) : is the fast, light, and easy way to run Docker containers

## Package Managers

- [Nix](https://nixos.org/nix/) : A powerful package manager for Linux and other Unix systems that enables reproducible builds and declarative configuration.

    - [MyNixOS](https://mynixos.com/) : A web platform that provides a curated collection of Nix configurations and packages, allowing users to discover and share Nix configurations easily.
    - [Nix Packages](https://search.nixos.org/packages) : A search engine for Nix packages

- [Nix-Darwin](https://github.com/LnL7/nix-darwin) : A Nix-based configuration management system for macOS, allowing users to manage their system configuration declaratively.
- [Flake](https://nixos.wiki/wiki/Flakes) : A new way to manage Nix packages and configurations, providing a more reproducible and composable approach to Nix expressions.
- [Homebrew](https://brew.sh/) : A popular package manager for macOS and Linux, simplifying the installation of software and libraries.

### Installing NPM Packages Globally in Nix

Add the following to your ~/.npmrc to have it put the packages in the ~/.npm-packages folder:

`prefix = ${HOME}/.npm-packages`
You need to add the npm bin folder to your PATH in your shell’s rc file (i.e. .bashrc or .zshrc for example, so you can access the executables:

`export PATH=~/.npm-packages/bin:$PATH`
You also need to add the NODE_PATH to the same file:

`export NODE_PATH=~/.npm-packages/lib/node_modules`

## Shell tools

- [neovim](https://github.com/neovim/neovim) : A highly configurable text editor built to enable efficient and productive text editing.
- [git](https://github.com/git/git) : A distributed version control system for tracking changes in source code.
- [gcc14](https://github.com/gcc-mirror/gcc) : The GNU Compiler Collection, a set of compilers for various programming languages.
- [nushell](https://github.com/nushell/nushell) : A modern shell that brings a new approach to command line usage with structured data.
- [eza](https://github.com/eza-community/eza) : A modern replacement for `ls` with more features and better defaults.
- [fzf](https://github.com/junegunn/fzf) : A command-line fuzzy finder that enables quick searching and selection from lists.
- [zoxide](https://github.com/ajeetdsouza/zoxide) : A smarter cd command that tracks your most used directories.
- [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh) : A prompt theme engine for any shell that helps to create beautiful command line prompts.
- [stow](https://github.com/aspiers/stow) : A symlink manager that helps to manage your dotfiles and configurations.
- [lazygit](https://github.com/jesseduffield/lazygit) : A simple terminal UI for git commands, making git easier to use.
- [ripgrep](https://github.com/BurntSushi/ripgrep) : A line-oriented search tool that recursively searches your current directory for a regex pattern.
- [pnpm](https://github.com/pnpm/pnpm) : A fast, disk space-efficient package manager for JavaScript.
- [thefuck](https://github.com/nvbn/thefuck) : A tool that corrects your previous console commands.
- [tldr](https://github.com/tldr-pages/tldr) : A collection of simplified and community-driven man pages.
- [bat](https://github.com/sharkdp/bat) : A cat clone with syntax highlighting and Git integration.
- [rip2](https://github.com/MilesCranmer/rip2) : A tool for converting ripgrep results into a more user-friendly format.
- [navi](https://github.com/denisidoro/navi) : An interactive cheatsheet tool for the command line.
- [pngpaste](https://github.com/jcsalterego/pngpaste) : Paste PNG into files on MacOS, much like pbpaste does for text.
- [gh](https://cli.github.com/) : Github CLI.
    - notify : `gh ext install meiji163/gh-notify`
- [fd](https://github.com/sharkdp/fd) : A simple, fast and user-friendly alternative to find.
- [shell-color-script](https://gitlab.com/dwt1/shell-color-scripts) : A collection of terminal color scripts.
- [yazi](https://github.com/sxyazi/yazi) : Blazing Fast Terminal File Manager
    - theme : [onedark](https://github.com/BennyOe/onedark.yazi)

## Editor

- [Lazyvim](https://www.lazyvim.org/)

### LazyExtras and Others

- [avante.nvim](https://github.com/yetone/avante.nvim)
- [blink.cmp](https://github.com/abrookins/blink.cmp)
- [blink.compat](https://github.com/abrookins/blink.compat)
- [conform.nvim](https://github.com/stevearc/conform.nvim)
- [dart-vim-plugin](https://github.com/dart-lang/dart-vim-plugin)
- [dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [flutter-tools.nvim](https://github.com/akinsho/flutter-tools.nvim)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [img-clip.nvim](https://github.com/HakonHarnes/img-clip.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [lazydev.nvim](https://github.com/MeanderingProgrammer/lazydev.nvim)
- [LazyVim](https://github.com/LazyVim/LazyVim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [mini.ai](https://github.com/echasnovski/mini.ai)
- [mini.icons](https://github.com/echasnovski/mini.icons)
- [mini.move](https://github.com/echasnovski/mini.move)
- [mini.pairs](https://github.com/echasnovski/mini.pairs)
- [mini.pick](https://github.com/echasnovski/mini.pick)
- [neogen](https://github.com/danymat/neogen)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [obsidian.nvim](https://github.com/epwalsh/obsidian.nvim)
- [onedarkpro.nvim](https://github.com/olimorris/onedarkpro.nvim)
- [persistence.nvim](https://github.com/folke/persistence.nvim)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim)
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [smear-cursor.nvim](https://github.com/XuehaiPan/smear-cursor.nvim)
- [snacks.nvim](https://github.com/LucasTavaresA/snacks.nvim)
- [supermaven-nvim](https://github.com/joeldrapper/supermaven-nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [ts-comments.nvim](https://github.com/LucasTavaresA/ts-comments.nvim)
- [vim-pencil](https://github.com/preservim/vim-pencil)
- [vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [catppuccin](https://github.com/catppuccin/nvim)
- [grug-far.nvim](https://github.com/hazeycode/grug-far.nvim)
- [kulala.nvim](https://github.com/charludo/kulala.nvim)
- [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)
- [mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [mini.files](https://github.com/echasnovski/mini.files)
- [mini.surround](https://github.com/echasnovski/mini.surround)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
- [nvim-nio](https://github.com/nvim-neotest/nvim-nio)
- [octo.nvim](https://github.com/pwntester/octo.nvim)
- [SchemaStore.nvim](https://github.com/b0o/SchemaStore.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

## Others

- vimium
- [claude taskmanager ai](https://github.com/eyaltoledano/claude-task-master)

```text
unmap <c-u>
unmap <c-d>
unmap <c-o>
unmap <c-m>
unmap J
unmap K

map <c-d> scrollPageDown
map <c-u> scrollPageUp
map <c-o> goBack
map <c-m> goForward
map <c-p> previousTab
map <c-n> nextTab
```
