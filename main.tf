resource "local_file" "file1"
{
filename=var.fname
content=var.fcontent
}
variable "fname"{
default="abc.txt"
type=string
}
variable "fcontent"{
default="Good day,this is the content inside abc file"
type=string
}

