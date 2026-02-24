resource "aws_instance" "test_instance" {
    ami = "ami-0f3caa1cf4417e51b"
    instance_type = var.instance_type
    key_name = var.key_name
    ##subnet_id = aws_subnet.test_subnet.id
    ## vpc_security_group_ids = [aws_security_group.test_sg.id]
    associate_public_ip_address = true 

    ######A subnet becomes public only when it has a route to Internet Gateway and 
    ### auto-assign public IP is enabled. Without enabling map_public_ip_on_launch or 
    #### associate_public_ip_address, the instance will not receive a public IP even 
    #### if IGW route exists.
    ### user_data = file("userdata.sh")

    tags = {
      Name = "${terraform.workspace}_instance"
    }
  
}
