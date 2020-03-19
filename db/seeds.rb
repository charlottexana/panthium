puts "Creating all your dummy data shithead :)"

Service.destroy_all

puts "Starting with dummy services"

service = Service.new(
  name: "Ad Hoc Consulting",
  description: "Day rate consulting for data protection needs",
  rate: "£600"
  )
service.save

service = Service.new(
  name: "Compliance Audit",
  description: "GDPR Compliance Audit and Recommendations",
  rate: "£2,500"
  )
service.save

service = Service.new(
  name: "Audit Implementation",
  description: "Rather than quoting the law at clients, we work on a contract basis to implement our findings into your organisation, working with teams on a day rate",
  rate: "£600"
  )
service.save

puts "Services created... all done now - go code ;)"
