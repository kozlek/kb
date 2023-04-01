# Base tools

## pyenv

[pyenv](https://github.com/pyenv/pyenv) is a version manager for Python.
It allows to install multiple versions of Python on the same machine.  
Combined with [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv) plugin, it is also able to manage **virtualenvs.**

#### Install a python version

```sh
pyenv install 3.11.2
```

#### Activate a Python version

```sh
pyenv shell 3.11.2
```

#### Create a virtualenv

```sh
pyenv virtualenv 3.11.2 dev
```

#### Activate a virtualenv

```sh
pyenv shell dev
```

#### Auto-activate a virtualenv

You can configure auto-activation of `dev` virtualenv when entering the current directory by using the following command:

```sh
pyenv local dev
```

This will create a `.python-version` file in your directory with the name of the specified virtualenv.
[pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv) shell extension will automatically enable the virtualenv 
when entering the directory.

!!! tip
    Installed Python versions and virtualenvs are located in `${PYENV_ROOT}/versions`

## pipx

[pipx](https://github.com/pypa/pipx) is an application manager for Python.
It creates a dedicated virtualenv for each application and adds it to your PATH.

#### Install a Python application

```sh
pipx install cookiecutter
```

!!! tip
    Each application is installed in a dedicated virtualenv located in `${HOME}/.local/pipx/venvs`

