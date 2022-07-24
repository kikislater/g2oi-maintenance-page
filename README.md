---

<p align="center">
  <a href="https://nsustain.com">
    <img src="https://raw.githubusercontent.com/Nsustain/.github/main/logo/logo_github.png" width="350">
  </a>
</p>

---

<p align="center">
  <a href="https://github.com/Nsustain/nsustain.com">
    <img alt="nsustain.com" src="https://img.shields.io/badge/GitHub-nsustain.com-brightgreen">
  </a>
  <a href="https://github.com/Nsustain/nsustain.com/blob/main/LICENSE">
    <img src="https://badgen.net/github/license/Nsustain/.github">
  </a>
</p>

---



<p align="center">
  <a href="https://Nsustain.github.io/maintenance-page/">
    <img src="https://user-images.githubusercontent.com/19341857/178981690-2c7deefe-d302-4828-818c-cc48562e6471.png" width="700">
  </a>
</p>

<!--
A gif can be generated by using
ffmpeg -ss 2 -i input.mp4 -filter_complex "[0]reverse[r];[0][r]concat=n=2:v=1:a=0,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" output.gif

which was from @llogan
https://superuser.com/questions/1608327/ffmpeg-boomerang-effect-to-gif
-->

<br>
<br>
<p align="center">
  <b>
    Maintenance Page<br>
    [<a href="https://Nsustain.github.io/maintenance-page/">Example</a>]
  </b>
</p>

<br>
<br>

Special thanks to `@Eddy-Barraud`
**[[GitHub](https://github.com/Eddy-Barraud/maintenance)]**
for designing and writing this HTML page and
`@realvjy` **[[illlustrations.co](https://illlustrations.co/)]**
for designing the owl and
open-sourcing it.

## How we deploy this page to our server

First, ssh into the server you'll host
your website in.

```bash
# 'account_name' and '123.456.789.987'
# should be substituted with yours.
ssh account_name@123.456.789.987
```

We store all our repositories in a folder
called `git`, but you can store all of these files
in any folder you want. Clone this repository.

```bash
# This creates the folder at `~/home/account_name/git`.
mkdir git
cd git

# Clone this repository.
git clone https://github.com/Nsustain/maintenance-page.git
cd maintenance-page
```

Finally, we use Docker Compose to run our image,
which is based on the official docker nginx image.
**[[Docker Hub](https://hub.docker.com/_/nginx)]**
Run the following commands, which basically
downloads the official nginx image,
copies `index.html` and `img/` into the
`/usr/share/nginx/html/` directory inside the image,
and listens to the port 80 for http traffic and
the port 443 for https traffic.

```bash
# The nginx server will start and keep running
# until you type in `docker compose down`.
docker compose up -d
```

Now, type in your server's ip address on your
web browser. The website should now be online.


Plus, if you'd like to make any change to
your webpage, make changes to index.html
and then rebuild and redeploy the website.

```bash
# Rebuild and redeploy the webpage.
# We use `&&` to execute them fast, minimizing downtime.
docker compose down && docker rmi maintenance-page_webserver && docker compose up -d
```

## Project Layout

```bash
# tree
.
├── CODE_OF_CONDUCT.md    # default Code of Conduct provided by GitHub
├── docker-compose.yml    # instructions that run with `docker compose up -d`
├── Dockerfile            # instructions that run with Docker
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
