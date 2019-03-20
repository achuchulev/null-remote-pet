# A sample repo with example of Terraform null provider that prints value get from remote terraform state

### The purpose of this repo is to show how to reference outputs from other terraform deployments

## How to use

### Get the two example repos

```
git clone https://github.com/achuchulev/module-random_pet.git
git clone https://github.com/achuchulev/null-remote-pet.git
```

### Generate random name

```
cd module-random_pet
terraform init
teraform plan
terraform apply
```

Output shoul be similar to:

```
Outputs:

name = separately-rightly-vital-foxhound
```

### Use that randomly generated name

```
cd null-remote-pet
terraform init
teraform plan
terraform apply
```

You should receive message similar to:

```
Hello separately-rightly-vital-foxhound!
```
