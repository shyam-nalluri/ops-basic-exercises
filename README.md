# Help
This code is used to sort the files and copy them to the folder based on the extensions.

# Options

* **--help**
  help option will display the instructons on how to use this application

* **--version**
  version option will print the version of the docker images

* **--scan**
  scan option will scan the files in the foder and sort them out by creating new folder based on the file extension.
  Once the folder is craeted all the related files are moved to that folder.
  For eg: If you folder with file extensions .txt, .sh, .pdf, .jpg 
  This code will first create folders with names txt, shx, pdf and jpg.
  Once the folders are created then they are moved to the particular folder of their extensions.

# Build instructions

```bash
docker build -t shyam-app .
```

# Run instructions

```bash
docker run -it -v FOLDER_TO_SCAN:/data shyam-app
docker run -it -v "$(pwd -W)/files":/data shyam-app
```
