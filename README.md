# Dotfiles

> **Work in progress**

Catppuccin Mocha-themed dotfiles for Sway on Linux.

## Installation

Copy config directories into place:

```sh
cp -r * ~/.config/
```

## Required Packages

### Waybar

| Package | Module(s) |
|---------|-----------|
| `waybar` | Bar itself |
| `sway` | `sway/workspaces`, `sway/mode`, `sway/scratchpad`, `sway/language` |
| `JetBrainsMono Nerd Font` | Font used in bar and tooltips |
| `Font Awesome 6 Free` | Icon font |
| `mpd` | `mpd` |
| `pulseaudio` | `pulseaudio` |
| `pavucontrol` | `pulseaudio` (on-click) |
| `power-profiles-daemon` | `power-profiles-daemon` |
| `brightnessctl` | `backlight` |
| `networkmanager` | `network` |

### Sway

| Package | Purpose |
|---------|---------|
| `sway` | Window manager |
| `swayidle` | Idle management (lock screen, screen off) |
| `swaylock` | Screen locker |
| `wmenu` | Application launcher (`wmenu-run`) |
| `playerctl` | Media key bindings |
| `brightnessctl` | Brightness keys |
| `grim` | Screenshot utility |
| `pulseaudio` | Volume keys |

### Foot

| Package | Purpose |
|---------|---------|
| `foot` | Terminal emulator |
| `JetBrainsMono Nerd Font` | Monospace font |

### Arch Linux (all packages)

```sh
sudo pacman -S sway swayidle swaylock wmenu foot waybar mpd pulseaudio pavucontrol power-profiles-daemon brightnessctl networkmanager playerctl grim
yay -S ttf-jetbrains-mono-nerd ttf-font-awesome
```

## Directories

### `sway/`

Sway window manager configuration.

- **`config`** - Key bindings, variables, output/input settings, idle rules, and bar config
  - Mod key: `Super` (`Mod4`)
  - Terminal: `foot`
  - Launcher: `wmenu-run`
  - Vim-style direction keys (`h/j/k/l`)
  - Volume/media/brightness/screenshot key bindings
  - Idle: lock after 5 min, screen off after 10 min
  - Background: `~/.config/sway/backgrounds/lawliet_background.png`

### `waybar/`

Waybar status bar configuration with Catppuccin Mocha theme.

- **`config.jsonc`** - Bar layout, modules, and formatting
- **`style.css`** - Catppuccin Mocha colors and styling

#### Notes

- The `custom/power` module references `~/.config/waybar/power_menu.xml` for its shutdown/reboot/suspend/hibernate menu.
- Keyboard-state and language modules require the appropriate input devices configured in Sway.

### `foot/`

Foot terminal emulator configuration.

- **`foot.ini`** - Catppuccin Mocha dark/light color schemes, font settings, and key bindings
  - Font: `monospace:size=15`
  - Color themes: Catppuccin Mocha (dark) and Catppuccin Latte (light)