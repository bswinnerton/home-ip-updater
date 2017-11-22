# DNSimple Home IP Updater

This is a script and Docker container for automatically updating the IP address
of an A record in your DNSimple account.

## Installation

1. Copy the example environment variables file to a file called `.env`:

    ```
    cp .env.example .env
    ```

2. Fill out the `.env` file with the appropriate values. Your account ID can be
   determined by issuing this request to the DNSimple API:

    ```
    curl -u 'email:password' https://api.dnsimple.com/v2/whoami
    ```

3. Build the Docker container:

    ```
    docker build -t home-ip-updater .
    ```

4. Run the updater:

    ```
    docker run --env-file .env home-ip-updater
    ```
