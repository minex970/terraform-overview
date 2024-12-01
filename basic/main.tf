# Using the following types of input variables.
# String, Number, Bool, List, Map
resource "local_file" "car-1" {
  filename = "/opt/car-1.txt"
  content  = <<EOT
  Car details...
  Name: ${var.car_make}
  Year: ${var.car_year}
  Is hybrid: ${var.is_hybrid}
  Feature: ${var.car_features[1]}
  Color: ${var.car_tags["color"]}
  EOT
}

# Using the following types of input variables.
# Object
resource "local_file" "car-2" {
  filename = "/opt/car-2.txt"
  content  = <<EOT
  Car details...
  Name: ${var.car_config.make}
  Year: ${var.car_config.year}
  Is hybrid: ${var.car_config.hybrid}
  Feature: ${var.car_config.feature[0]}
  EOT
}

# Using the following types of input variables.
# Tuple
resource "local_file" "car-3" {
  filename = "/opt/car-3.txt"
  content  = <<EOT
  Car details...
  Name: ${var.car_data[0]}
  Year: ${var.car_data[1]}
  Is hybrid: ${var.car_data[2]}
  Feature: ${var.car_data[3][2]}
  EOT
}


# Using resource attributes in the resource block.
resource "random_pet" "my_pet" {
  prefix = "Mr"
  separator = "."
  length = 1
}

resource "local_file" "pet" {
  filename = "/opt/pets.txt"
  content = "My favorite pet is ${random_pet.my_pet.id} \n"
}

# Using output variable.
output "pet-name" {
  value = random_pet.my_pet.id
}
