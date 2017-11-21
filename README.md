# DNSimple Home IP Updater

This is a script and Docker container for automatically updating the IP address
of a record in your DNSimple account.

## Installation

1. Copy the example environment variables file to a file called `.env`:

```
cp src/.env.example src/.env
```

2. Fill out the `.env` file with the appropriate values. Your account ID can be
   determined by issuing this request to the DNSimple API:

```
curl -u 'email:password' https://api.dnsimple.com/v2/whoami
```

3. Build the Docker container:

```
script/build
```

4. Run the updater:

```
script/run
```
