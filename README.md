# Zsh with Powerlevel10k Docker Image

This Docker image is based on Ubuntu 24.04 and comes pre-configured with Zsh, Oh My Zsh, Powerlevel10k theme, and useful plugins like `zsh-autosuggestions` and `zsh-syntax-highlighting`.

## Features

- **Zsh**: A powerful shell with scripting capabilities.
- **Oh My Zsh**: A delightful, open-source, community-driven framework for managing your Zsh configuration.
- **Powerlevel10k**: A theme for Zsh that emphasizes speed, flexibility, and out-of-the-box experience.
- **Plugins**:
  - `zsh-autosuggestions`: Suggests commands as you type based on history and completions.
  - `zsh-syntax-highlighting`: Provides syntax highlighting for the shell.

## Installation

To build and run this Docker image, follow these steps:

1. **Build the Docker Image**:
    ```sh
    docker build -t zsh-powerlevel10k .
    ```

2. **Run the Docker Container**:
    ```sh
    docker run -it zsh-powerlevel10k
    ```

## Configuration

The Dockerfile performs the following steps:

1. Updates the package list and installs necessary packages (`zsh`, `curl`, `git`, `nano`).
2. Installs Oh My Zsh without prompting.
3. Clones the Powerlevel10k theme into the Oh My Zsh custom themes directory.
4. Sets the Powerlevel10k theme in the `.zshrc` file.
5. Appends a custom Powerlevel10k configuration to the `.zshrc` file.
6. Clones the `zsh-autosuggestions` and `zsh-syntax-highlighting` plugins into the Oh My Zsh custom plugins directory.
7. Adds the plugins to the `.zshrc` file.

## Usage

Once inside the container, you can start using Zsh with the Powerlevel10k theme and the installed plugins. The configuration is already set up, so you can enjoy an enhanced shell experience right away.

## Customization

If you want to customize the Powerlevel10k configuration, you can modify the `power10k-config` file before building the Docker image. This file is appended to the `.zshrc` during the build process.

## License

This project is licensed under the MIT License.
