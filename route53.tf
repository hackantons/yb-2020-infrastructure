resource "aws_route53_zone" "bekb_dev" {
  name = "bekb.dev"
}

resource "aws_route53_record" "bekb_dev" {
  zone_id = aws_route53_zone.bekb_dev.zone_id
  name    = "backend.bekb.dev"
  type    = "A"

  alias {
    name                   = aws_alb.ybhackathon.dns_name
    zone_id                = aws_alb.ybhackathon.zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "blockchain_bekb_dev" {
  zone_id = aws_route53_zone.bekb_dev.zone_id
  name    = "blockchain.bekb.dev"
  type    = "A"
  ttl     = "300"

  records = ["18.192.192.22"]
}