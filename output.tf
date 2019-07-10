
output "worker-ip" {
  value = "${aws_instance.worker.public_ip}"
}
