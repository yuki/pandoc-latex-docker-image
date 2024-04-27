# Pandoc + LaTeX Docker/Podman image

Custom Docker image based on [Arch Linux](https://hub.docker.com/r/archlinux/archlinux) to use Pandoc to generate [my books](https://github.com/yuki/my-books).

This image has all the necesary packages that are needed to compile/generate HTML and PDF files using my custom [pandoc template](https://github.com/yuki/pandoc-templates).

## How to generate the image

To use this custom image, after downloading this repo do:

```bash
docker build -t pandoc_latex:latest .
```

The image will be created and will download all the necesary packages from Arch Linux repositories.

## How to use the image

To use the new generated image, the idea is to be in the path where your Pandoc files are:

```bash
docker run --rm -it -v "$(pwd):/workdir" pandoc_latex:latest
```

As you can see, it generate a custom volume between your actual path and the /workdir directory in the container.