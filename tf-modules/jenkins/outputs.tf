output "jenkins_public_ip" {
  value = aws_instance.jenkins_server.public_ip
  description = "The public IP address of the Jenkins server"
}

output "next_steps" {
  value = <<EOF
    1. Update your Ansible inventory with the new IP address: ${aws_instance.jenkins_server.public_ip}
    2. Run your Ansible playbook to configure Jenkins and set up SSL:
       ansible-playbook -i your_inventory_file jenkins_playbook.yml
  EOF
}