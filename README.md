# Syfraxing Homebrew Tap

Homebrew casks for [Colon](https://github.com/Syfraxing/Colon), the macOS menu-bar emoji picker.

## Install

```sh
brew install --cask syfraxing/tap/colon
```

Colon updates itself through Sparkle, so `brew upgrade` leaves it alone unless you pass `--greedy`.
`brew uninstall --zap --cask colon` also removes its preferences, usage history and caches
(the Jev API key stays in your login keychain under `so.slayer.Colon`).

`Casks/colon.rb` is bumped automatically by Colon's release workflow when a final release is published.
