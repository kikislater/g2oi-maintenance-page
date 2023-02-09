# G2OI MAINTENANCE PAGE

<br>

## How we deploy this to our server

***Build Docker image***<br>
```bash
docker build -t g2oi/maintenance-page:1.0 -t g2oi/maintenance-page:latest .
```

<br>

***Run***<br>
```bash
docker run -d --rm -p 80:80 g2oi/maintenance-page
```

<br>

<br>
<br>

## Repository Layout

```bash
# tree
├── Dockerfile            # this is what we use for building g2oi/maintenance-page image
├── img                   # favicons, social preview picture, `404.svg`
├── index.html            # core source code. If you want to make modifications, it'll most likely happen here
├── LICENSE               # details on our Apache License
├── manifest.json         # metadata of our website
├── NOTICE.md             # `@Eddy-Barraud`'s MIT License
└── README.md             # file you're reading now. Documentation goes here
```

<br>
<br>
<br>
