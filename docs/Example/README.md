<div style="text-align: justify;">

# Steps

> Create source Repo in GCP

> Clone repo to local

> Create tf configuration files

> Create cloudbuild.yaml file

> Create build trigger

> Push Code

## Create source Repo in GCP

Login to GCP

Search `Source Repositories`

Can create new repo or use existing one

Clone the GCP repository to local machine using `gcloud source repos clone <name repository> <project name> ` command

Come in the local repository created

Registry in the Terraform site

Search in the site `storage` and click on `google storage bucket`

Create a file called `main.tf` and add the manual code

Add this code:

```
resource "google_storage_bucket" "auto-expire" {
    name          = "tt-cicdbuild-bucket"
    location      = "US"
    project       = "tt-dev-001"
    force_destroy = true
    public_access_prevention = "enforced"
}
```
The code above is in [Terraform with google storage bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket)

create a yaml file, like `cloudbuild.yaml` and add the following code:

```
steps:
  - id: 'branch name'
    name: 'alpine'
    entrypoint: 'sh'
    args:
    - '-c'
    - |
        echo "**********************"
        echo "$BRANCH_NAME" 
        echo "**********************"

  - id: 'tf init'
    name: 'hashicorp/terraform:1.9.0'
    entrypoint: 'sh'
    args:
    - '-c'
    - |
        terraform init

  - id: 'tf plan'
    name: 'hashicorp/terraform:1.9.0'
    entrypoint: 'sh'
    args:
    - '-c'
    - |
        terraform plan
    
  - id: 'tf apply'
    name: 'hashicorp/terraform:1.0.0'
    entrypoint: 'sh'
    args:
    - '-c'
    - |
        if [[ "$BRANCH_NAME" = "prod" ]]; then
          echo "Branch is 'prod', proceeding with terraform apply."
          terraform plan
          exit 0
        else
          echo "Branch is not 'prod', skipping terraform apply."
          exit 0
        fi
```

## Create build trigger
Search in GCP `cloud build`

Choose a Region

Click on `Triggers` in the left menu

Choose a Region

Click on `Create trigger`

Complete this configuration:
* `Name:` tf-trigger
* `Event:` Push to a branch
* `Source:` 1st gen
* `Branch:` .*
* `Configuration - Type` Cloud Build configuration (YAML or JSON)
* `Configuration - Location` Repository

Create the tringger clicking on `Create`