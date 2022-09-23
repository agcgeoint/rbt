# fonts

A repository for keeping our existing RBT fonts, and documenting the process we can use to add new fonts.

Check out these sites to search for fonts that you may require:

- [Download Free Fonts](https://www.download-free-fonts.com)

- [Google Fonts](https://fonts.google.com/)

- _Please be sure to pay attention to any font licensing agreements required before using fonts downloaded from the Web._

Follow the instructions below to install [build_pbf_glyphs](https://github.com/stadiamaps/build_pbf_glyphs), a protobuf (pbf) font glyph building tool.

## On macOS

1. Install Rust and Cargo using rustup:
```
curl https://sh.rustup.rs -sSf | sh
```
2. Enter `1` to proceed with the default installation.

1. Restart the console, or configure the PATH variable yourself with:
```
source $HOME/.cargo/env
```
4. Use Cargo to install build_pbf_glyphs. Note the `--branch` option:
```
cargo install --git https://github.com/stadiamaps/build_pbf_glyphs --branch main build_pbf_glyphs
```

If it fails to compile, you may need to download and install CMake:

[Download](https://cmake.org/download/)

```
./bootstrap && make && sudo make install
```

5. Process the font(s):
```
build_pbf_glyphs /path/to/font_dir /path/to/out_dir
```
`font_dir` can contain one or more font files in either TrueType (.ttf) or OpenType (.otf) format. Subdirectories containing the pbfs for each font file are automatically created in `out_dir`.

## On Windows

Instead of step 1 above, download and run:

[rustup-init.exe](https://win.rustup.rs/)

## Troubleshooting

If your fonts are nowhere to be seen when you reload in fresco, check the Chrome's View->Developer->javascript console or Firefox's Tools->Web Developer->Web Console.  If you see a 400 Error "Font not allowed." make sure the console.json file on tileserver includes a line: "serveAllFonts": true in the "options" section of the config.json (see [here](https://github.com/maptiler/tileserver-gl/issues/391))

If this doesn't fix it, or you're seeing a different error message, check the following:

- The .pbf font files have a chmod code of 664 (rw-rw-r) and the font folder has a code of 775 (rwxrwxr-x)
- The font folder appears in single quotes (e.g., 'Arial Bold')
- The name of the font appears in the font.json file (the manifest).

If you have trouble running build_pbf_glyphs (a so-called 'panic' error, or "Cannot find folder") check and make sure that the name of the .ttf file in the source folder has no spaces in it.  Replace the spaces with tacks ("-").

## Additional Resources

- Protobuf SDF Font Glyph Builder: [build_pbf_glyphs](https://github.com/stadiamaps/build_pbf_glyphs)

- Rust and Cargo: [The Cargo Book](https://doc.bccnsoft.com/docs/rust-1.36.0-docs-html/cargo/index.html)

- Install Cargo on Mac OSX with Homebrew: [Mac App Store](http://macappstore.org/cargo/)

- Get CMake: [CMake](https://cmake.org/download/)

- Install Rust: [Rust](https://www.rust-lang.org/tools/install)
