# Installation

To get started with Python, you need to install multiple tools on your system.

## pyenv and pyenv-virtualenv

[pyenv](https://github.com/pyenv/pyenv) is a version manager for Python.
It allows to install multiple versions of Python on the same machine.

[pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv) is a plugin for [pyenv](https://github.com/pyenv/pyenv) that helps to manage virtualenv.

The recommended way to install both is to use let your **zsh framework** manage them for you.

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
    ```

## pipx

[pipx](https://github.com/pypa/pipx) is an applicatuon manager for Python.
It creates a dedicated virtualenv for each application and adds it to your PATH.

=== "MacOS"
    Install it using Homebrew

    ```sh
    brew install pipx
    ```

=== "Linux"
    Install it using `pip` in user mode

    ```sh
    pip install --user pipx
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
