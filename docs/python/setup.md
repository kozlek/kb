# Installation

To get started with Python, you need to install multiple tools on your system.

## pyenv and pyenv-virtualenv

[pyenv](https://github.com/pyenv/pyenv) is a version manager for Python.
It allows to install multiple versions of Python on the same machine.

[pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv) is a plugin for [pyenv](https://github.com/pyenv/pyenv) that helps to manage virtualenv.

#### Installation

=== "MacOS"
    Install it using Homebrew, along with build dependencies

    ```sh
    brew install openssl readline sqlite3 xz zlib tcl-tk
    brew install pyenv pyenv-virtualenv
    ```

    Configure your shell (bash)

    ```sh
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
    exec "$SHELL"
    ```

=== "Linux"
    Install build dependencies

    ```sh
    sudo apt-get update
    sudo apt-get install -y \
        build-essential \
        libssl-dev \
        zlib1g-dev \
        libbz2-dev \
        libreadline-dev \
        libsqlite3-dev \
        curl \
        libncursesw5-dev \
        xz-utils \
        tk-dev \
        libxml2-dev \
        libxmlsec1-dev \
        libffi-dev \
        liblzma-dev \
        git
    ```

    Install pyenv and pyenv-virtualenv

    ```sh
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
    ```

    Configure your shell (bash)

    ```sh
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
    exec "$SHELL"
    ```

=== "Zsh (zinit)"
    Add the following snippet to your `.zshrc`
    
    ```sh
    # pyenv
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH=$PYENV_ROOT/shims:$PATH
    zinit ice atclone'./libexec/pyenv init - > zpyenv.zsh && git clone https://github.com/pyenv/pyenv-virtualenv ./plugins/pyenv-virtualenv && ./libexec/pyenv virtualenv-init - >> zpyenv.zsh' \
        atpull'./libexec/pyenv init - > zpyenv.zsh && cd ./plugins/pyenv-virtualenv && git pull && cd ../.. && ./libexec/pyenv virtualenv-init - >> zpyenv.zsh' \
        as'command' pick'bin/pyenv' src"zpyenv.zsh" nocompile'!'
    zinit light pyenv/pyenv
    exec "$SHELL"
    ```

## pipx

[pipx](https://github.com/pypa/pipx) is an application manager for Python.
It creates a dedicated virtualenv for each application and adds it to your PATH.

=== "MacOS"
    Install it using Homebrew

    ```sh
    brew install pipx
    ```

    Configure your shell (bash)

    ```sh
    echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc
    exec "$SHELL"
    ```

=== "Linux"
    Install system python

    ```sh
    sudo apt-get update
    sudo apt-get install -y python3 python3-pip python3-venv
    ```

    Install it using `pip` in user mode

    ```sh
    pip install --user pipx
    ```

    Configure your shell (bash)

    ```sh
    echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc
    exec "$SHELL"
    ```

## poetry

[poetry](https://github.com/python-poetry/poetry) is a package manager for Python. 

Install it using [pipx](https://github.com/pypa/pipx)

```sh
pipx install poetry
```

## pip-tools

[pip-tools](https://github.com/jazzband/pip-tools) is a lightweight alternative to [poetry](https://github.com/python-poetry/poetry) 
for small projects and simple use cases.

Install it using pipx

```sh
pipx install pip-tools
```
