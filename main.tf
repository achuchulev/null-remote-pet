data "terraform_remote_state" "random_pet" {
  backend = "atlas"

  config {
    name = "atanasc/random_pet"
  }
}

resource "null_resource" "HelloRandom2" {
  provisioner "local-exec" {
    command = "echo Hello ${data.terraform_remote_state.random_pet.name}!"
  }
}
