# Stillnote Homebrew tap

For Apple silicon Macs running macOS 15 or newer:

```sh
brew install jxu-dev-c/stillnote/stillnote-runtime jxu-dev-c/stillnote/stillnote
```

Open Stillnote, approve its first launch in macOS Privacy & Security if needed,
and download the speech model in Settings. The app is currently ad-hoc signed.

Quit Stillnote before upgrading:

```sh
brew update
brew upgrade jxu-dev-c/stillnote/stillnote-runtime
brew upgrade --cask jxu-dev-c/stillnote/stillnote
```

Repair speech dependencies with `brew reinstall jxu-dev-c/stillnote/stillnote-runtime`.
Uninstall with `brew uninstall --cask jxu-dev-c/stillnote/stillnote`; optionally remove
`stillnote-runtime` too. Meetings and downloaded models remain in Application Support.

If you installed Stillnote manually, quit it and move the old app out of Applications
before installing through Homebrew. Keep the Stillnote folder in Application Support.

Release assets are hosted here so installation does not require access to the source repository.
