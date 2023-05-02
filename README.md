# CLOUDBOX

Here is a docker image that contains everything you need, to work in a cloud enviroment with an alias `cloudbox` you can run it anywhere in your system and it's gonna automatically mount your folder, into the image.

## PREREQUISITE
Docker sould be installed and running. You can check it using this command :
```bash
sudo systemctl status docker
```
Makefile, you can also check it, using:
```bash
make --version
```

## USAGE

First build your image using :
```bash
make build
```

Afterward you can run your image anywhere, in your system using (Note: The pwd where you are running this command defines the folder where the docker gonna be mounted):
```bash
cloudbox
```

If you want to destroy your image your can use :
```bash
make destroy
```
