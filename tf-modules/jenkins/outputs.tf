output "jenkins_public_ip" {
  value       = aws_instance.jenkins_server.public_ip
  description = "The public IP address of the Jenkins server"
}

output "jenkins_initial_password_command" {
  value       = "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
  description = "Command to retrieve the initial admin password for Jenkins"
}