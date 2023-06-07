# Installation

=== "MacOS"
    Install it using Homebrew

    ```sh
    brew install postgresql
    ```

=== "Linux"
    Configure PostgreSQL APT repo

    ```sh
    sudo apt-get install curl ca-certificates gnupg lsb-release
    curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null
    echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list
    ```

    Install PostgreSQL

    ```sh
    sudo apt-get update
    sudo apt-get install -y postgresql-15
    ```
