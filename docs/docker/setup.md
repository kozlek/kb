# Installation

=== "MacOS"
    Install `colima` using Homebrew

    ```sh
    brew install colima docker docker-buildx docker-compose
    ```

    Start colima VM

    ```sh
    colima start
    ```


=== "Linux"
    Configure Docker APT repo

    ```sh
    sudo apt-get update
    sudo apt-get install ca-certificates curl gnupg
    
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg

    echo \
        "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
        "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
        sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    ```

    Install Docker

    ```sh
    sudo apt-get update
    sudo apt-get install \
        docker-ce \
        docker-ce-cli \
        docker-buildx-plugin \
        docker-compose-plugin
    ```
