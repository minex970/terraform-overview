# String variable for car make
variable "car_make" {
  type        = string
  description = "The make of the car"
  default     = "Toyota"
}

# Number variable for car year
variable "car_year" {
  type        = number
  description = "The manufacturing year of the car"
  default     = 2023
}

# Boolean variable to indicate if the car is hybrid
variable "is_hybrid" {
  type        = bool
  description = "Whether the car is a hybrid or not"
  default     = true
}

# List variable for car features
variable "car_features" {
  type        = list(string)
  description = "A list of features available in the car"
  default     = ["Sunroof", "Bluetooth", "Backup Camera"]
}

# Map variable for car tags (key-value pairs)
variable "car_tags" {
  type        = map(string)
  description = "Tags associated with the car"
  default = {
    "color"       = "red"
    "engine_type" = "V6"
  }
}

# Object variable for car configuration (make, model, and year)
variable "car_config" {
  type = object({
    make    = string
    year    = number
    hybrid  = bool
    feature = list(string)
  })
  description = "Car configuration"
  default = {
    make    = "Honda"
    year    = 2022
    hybrid  = false
    feature = ["Sunroof", "Bluetooth", "Backup Camera"]
  }
}

# Tuple variable for storing car data (make, year, and hybrid status)
variable "car_data" {
  type        = tuple([string, number, bool, list(string)])
  description = "Tuple of car make, year, and hybrid status"
  default     = ["Ford", 2021, false, ["Sunroof", "Bluetooth", "Backup Camera"]]
}

