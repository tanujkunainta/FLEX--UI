# FLEX--UI

```{=html}
<p align="center">
```
`<b>`{=html}A Customized Termux Startup & Terminal
Interface`</b>`{=html}`<br>`{=html} `<i>`{=html}Personalize your Termux
startup with a FLEX-style terminal experience.`</i>`{=html}
```{=html}
</p>
```

------------------------------------------------------------------------

## Overview

**FLEX--UI** is a shell-customization project for Termux on Android. It
provides a custom startup banner, a username/password prompt, a
personalized Bash prompt, optional startup sound effects, and a basic
internet connectivity check.

-   **Project:** FLEX--UI
-   **Author shown in project:** 𝐅𝐋𝐄𝐗
-   **Platform:** Android / Termux
-   **Main language:** Bash, with a small Python utility

## Features

-   Animated-style terminal loading/banner display.
-   Custom startup login prompt.
-   Personalized shell prompt with time, shell name and current
    directory.
-   Random startup audio from the included MP3 files.
-   Basic internet connectivity check.
-   Setup, update and reset-style scripts.

## Project Structure

``` text
FLEX-UI-main/
├── Access-Granted.mp3
├── JARVIS.mp3
├── Jarvis2.mp3
├── LICENSE
├── README.md
├── banner.sh
├── delete.sh
├── login.sh
├── network.py
├── setup.sh
├── sound_effect.py
└── update.sh
```

The setup script moves the audio and Python files into `Song/` and
`NETWORK/` folders during installation.

## Requirements

-   Android device with Termux installed.
-   Internet connection for package installation.
-   Bash and Termux package manager (`pkg`).
-   Optional audio playback support through `mpv`.

The current `setup.sh` attempts to install `pv`, `python`, `cmatrix`,
`figlet`, `ruby`, `mpv`, `lolcat`, `requests`, `python2`, and
`termux-api`.

> Package availability can vary between Termux versions. Python's
> `random` module is part of the standard library and does not normally
> need a separate `pip install`.

## Installation

1.  Install Termux from a trusted, maintained distribution.
2.  Clone your repository:

``` bash
pkg update && pkg upgrade -y
pkg install git -y
git clone https://github.com/tanujkunainta/FLEX--UI.git
```

3.  **Important: directory name**

    The scripts currently expect the project directory to be named
    `FLEX--UI` at `$HOME/FLEX--UI`. The uploaded archive's top-level
    folder is `FLEX-UI-main`. Rename the extracted/cloned folder to
    `FLEX--UI`, or update the hard-coded paths in `setup.sh`,
    `login.sh`, and `update.sh` before running them.

4.  Enter the project directory and review the scripts:

``` bash
cd "$HOME/FLEX--UI"
```

5.  After checking the scripts and confirming their paths, run:

``` bash
chmod +x *
bash setup.sh
```

## Files & Scripts

  -----------------------------------------------------------------------
  File                                Purpose
  ----------------------------------- -----------------------------------
  `setup.sh`                          Installs packages, requests storage
                                      access, arranges project files, and
                                      starts the login setup.

  `login.sh`                          Shows the banner, asks for setup
                                      credentials and shell name, then
                                      writes a custom Bash startup
                                      configuration.

  `banner.sh`                         Displays the FLEX--UI loading
                                      animation and project banner.

  `sound_effect.py`                   Selects one of the three MP3 files
                                      at random and launches it with
                                      `mpv`.

  `network.py`                        Makes a basic HTTP request to
                                      Google to check internet
                                      connectivity.

  `update.sh`                         Runs `git pull origin main` from
                                      `$HOME/FLEX--UI`.

  `delete.sh`                         Writes default-style Termux `motd`
                                      and Bash prompt configuration text
                                      into files in its current
                                      directory.
  -----------------------------------------------------------------------

## Important Notes Before Running

Please inspect the scripts before executing them. The current project
has a few implementation details to be aware of:

1.  **Shell configuration is changed:** `login.sh` removes the existing
    `motd` and `bash.bashrc` from Termux's configuration directory and
    writes a replacement Bash configuration. This changes how Termux
    starts.
2.  **Credentials are not securely stored:** the entered setup password
    is embedded in the generated shell configuration for comparison.
    This is not secure authentication. Do not enter a real, reused, or
    sensitive password.
3.  **Reset script is limited:** `delete.sh` creates `motd` and
    `bash.bashrc` in its current working directory; it does not itself
    copy them into Termux's configuration directory or guarantee
    restoration. Back up your original configuration first.
4.  **Fixed directory paths:** scripts expect `$HOME/FLEX--UI`. A
    different folder name can cause commands to fail.
5.  **Audio file paths:** `setup.sh` moves audio files and
    `sound_effect.py` into `$HOME/FLEX--UI/Song`, and `login.sh` later
    runs the sound script from that folder. Check that all expected
    files are present.
6.  **Python compatibility:** `network.py` has a Python 2-style shebang,
    while current Termux environments generally use Python 3. Run it
    with a compatible interpreter and check dependencies.
7.  **Update behavior:** `update.sh` assumes the folder is a Git
    repository with a remote named `origin` and a branch named `main`.
8.  **Network test scope:** `network.py` only tests whether it can reach
    `http://www.google.com`; it is not a security scanner.

## Updating

From the project directory, the included script attempts:

``` bash
bash update.sh
```

This runs `git pull origin main`. Confirm that your Git remote and
branch are configured correctly before updating.

## License

See the included [LICENSE](LICENSE) file for the project's license
terms.

------------------------------------------------------------------------

```{=html}
<p align="center">
```
`<b>`{=html}FLEX--UI`</b>`{=html}`<br>`{=html} `<i>`{=html}Customized
Termux Startup Experience`</i>`{=html}`<br>`{=html} Made by 𝐅𝐋𝐄𝐗
```{=html}
</p>
```
