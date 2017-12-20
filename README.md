## License and Authors

Author: Athanasios Gkaraliakos (a.gkaraliakos@gmail.com)

# Hubrick-DevOps-challenge cookbook

An example cookbook which creates and configures an Ubuntu instance running nginx, serving a plain html hello world on default port 80.


## Prerequisites
* Install ChefDK for you distro and add it to your $PATH.
* Enable [Google Cloud Compute API](https://console.cloud.google.com/compute)
* Install [Google Cloud SDK](https://cloud.google.com/sdk/downloads)  and add it to your $PATH
* Install Test Kitcken [Google Cloud driver](https://github.com/test-kitchen/kitchen-google)


# Initialize Google Cloud SDK
```bash
user@machine$: gcloud init gcloud init --console-only
```
Using a browser to visit the generated link:

    https://accounts.google.com/o/oauth2/auth?............
    Paste the genrated string to the promt:

Enable application default login needed by GCE test-kitchen driver.

```bash
user@machine$: gcloud auth application-default login
```

Using a browser to visit the generated link:

    https://accounts.google.com/o/oauth2/auth?............
    Paste the genrated string to the promt:

It places the file /home/$USER/.config/gcloud/application_default_credentials.json

## Usage
* Clone
* Set Google Cloud Project ID

```bash
user@machine$: gcloud beta projects list 

PROJECT_ID            NAME        PROJECT_NUMBER

xxxxxxxxxxxxxxx       PRJ         000000000000

user@machine$: export GCE_PROJECT_ID=xxxxxxxxxxxxxxx
```

* Execute `kitchen converge` to provision the instance
* Execute `kitchen verify` to run the tests
* Execute `kitchen destroy` to destroy the running VM instace

## License and Authors

Author: Athanasios Gkaraliakos (a.gkaraliakos@gmail.com)