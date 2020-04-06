## cargo ##############################################################################################################
alias carb='cargo build'
alias carbr='cargo build --release'
alias cartest='cargo test'
alias carbe='cargo bench'
alias carr='cargo run'
alias carrr='cargo run --release'
alias card='cargo doc'
alias caru='cargo update'
alias carout='cargo outdated'

alias cars='cargo search'
alias cari='cargo install'
alias carif='cargo install --force'
alias caril='cargo install --list'


# https://github.com/matthiaskrgr/cargo-cache/
# $ rustup target add --toolchain nightly wasm32-unknown-unknown
# $ cargo +nightly --target=wasm32-unknown-unknown


carall() {
    cargo install fw # !!!
    cargo install procs
    cargo install inferno
    cargo install oxipng
    cargo install gifski
    cargo install ffsend
    cargo install exa

    cargo install bat
    cargo install bingrep
    cargo install ddh
    cargo install eureka
    cargo install fd-find
    cargo install fselect
    cargo install hx
    cargo install lsd
    cargo install mdbook
    cargo install ruplacer
    # cargo install sd
    cargo install tokei
    cargo install watchexec
    cargo install xsv
    cargo install zou
}

# zola

# cargo install shell2batch
# error: specified package `shell2batch v0.4.0` has no binaries

# fw - workspace productivity booster


# oxipng 2.2.2 Maintenance intention for this crate Travis CI build status for the master branch
# A lossless PNG compression optimizer

# ffsend [WIP]
# Easily and securely share files from the command line.
# A fully featured Firefox Send client.

# gifski converts video frames to GIF animations using pngquant's
# fancy features for efficient cross-frame palettes and temporal dithering.
# It produces animated GIFs that use thousands of colors per frame.

# ddh 0.10.1
# Compare and contrast directories

# eureka 1.5.2
# CLI tool to input and store your ideas without leaving the terminal

# hx 0.2.1 CodeCov coverage status for the master branch Travis CI build status for the master branch
# Futuristic take on hexdump, made in Rust.

# lsd 0.15.1
# An ls command with a lot of pretty colors and some other stuff.

# ruplacer 0.4.1
# Find and replace text in source files

# sd 0.6.5
# An intuitive find & replace CLI

# watchexec 1.10.2 Appveyor build status for the master branch Travis CI build status for the master branch
# Executes commands in response to file modifications

# xsv 0.13.0
# A high performance CSV command line toolkit.

# zou 0.1.0
# A simple and fast download accelerator
