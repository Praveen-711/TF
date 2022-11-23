resource "aws_vpc" "new_vpc" {
  cidr_block       = var.cidr_block
  

  tags = {
    Name = "My_vpc_1"
  }
}

resource "aws_subnet" "subnet" {

  count = length(var.subnets_cidr)
  cidr_block = var.subnets_cidr[count.index]
  vpc_id = aws_vpc.new_vpc.id
  availability_zone = var.subnet_az[count.index]

tags = {
 "Name" = var.subnet_names[count.index]
}

depends_on = [
  aws_vpc.new_vpc
  
]     

}
