# mifi
Web application for managing personal finance.

## Development Setup
Prerequisites:
 * java (1.7+)

For possible problems encountered during the setup please refer to the [HELP.md](https://github.com/mseravalli/mi-fi/blob/master/HELP.md) file, or open an [issue](https://github.com/mseravalli/mi-fi/issues).

Run all the necessary containers.
```
docker container run -d -p 5432:5432 mseravalli/mifi-sql
docker container run -d -p 4200:4200 mseravalli/mifi-frontend
```

Clone the repo.
```
$ git clone https://github.com/mseravalli/mi-fi.git
```

Run the application, the first run might take a while.
```
$ ./activator run
```

Open your favourite Browser with CORS disabled. Be sure to access only localhost when using this mode.
Here and example with Chrome:
```
$ google-chrome --disable-web-security --user-data-dir 
```

Point your browser to [http://localhost:4200](http://localhost:4200).
