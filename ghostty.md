# ghostty

`ghostty` - Ghostty terminal emulator

## GPU acceleration
`ghostty` offloads text rendering and visual operations from the CPU to the GPU. This allows thousands of GPU cores to work in parallel to render the textual glyphs in parallel. Conversely, a CPU might have only a few dozen cores to render text.

## Configuration

On macOS, the plaintext config file is located here: `"/Users/tnear/Library/Application Support/com.mitchellh.ghostty/config"`

### Show config
```bash
ghostty +show-config
```

### Themes
```bash
# list themes TUI
ghostty +list-themes
```

### Font
```bash
# change font size. Often requires restarting application
font-size = 15
```
