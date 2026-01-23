resource "local_file" "file1" {
    filename = var.fname
    content = var.fcontent
}
variable "fname" {
    default  = "abc.txt"
    type = string
}
variable "fcontent" {
    default  = "Good day,this is the content inside abc file"
    type = string
}
resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = var.rg_name
}

variable location{
	default = "westus"
	type = string
}
variable rg_name{
	default = "sharrgpip"
	type = string
}

