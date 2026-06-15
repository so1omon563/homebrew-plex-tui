# homebrew-plex-tui

Homebrew tap for [plex-tui](https://github.com/so1omon563/plex-tui).

```bash
brew trust --tap so1omon563/plex-tui
brew tap so1omon563/plex-tui
brew install plex-tui
```

Homebrew 6 requires non-official taps to be trusted before Homebrew loads
formulae from them. `plex-tui` depends on `mpv` for playback, and the formula
installs `mpv` from Homebrew/core, so no additional tap trust is needed for
dependencies.
