# dockerized_tf_github_repo
Dockerized Terraform Script to Create a Github Repository, then share with "jay-feng" Github account.

Build Docker Image
```
docker build --tag dockerized_tf_github_repo .
```

Runs `terraform init` in the Docker Container
```
docker run -v `pwd`:/workspace -w /workspace hashicorp/terraform:light init
```

Runs `terraform apply` in the Docker Container, will prompt user for Github OAuth Token
```
docker run -v `pwd`:/workspace -w /workspace -i -t hashicorp/terraform:light apply 
```

Additional arguments for `main.tf` and `collaborators.tf` can be found here:
- https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
- https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_collaborator
