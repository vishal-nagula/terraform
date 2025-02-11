resource "aws_route53_record" "expence" {
  count = length(var.instance)
  zone_id = var.zone_id
  name    = "${var.instance[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense-project[count.index].private_ip]
}

resource "aws_route53_record" "expence-frontend" {
  zone_id = var.zone_id
  name    = "${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense-project[2].private_ip]
  allow_overwrite = true
}