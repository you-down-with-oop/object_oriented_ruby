require "./employee.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Actualize::Employee.new(first_name: "Majora", last_name: "Carter", salary: 80000, active: true)
employee2 = Actualize::Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info
employee1.give_annual_raise
employee1.print_info

puts employee1.first_name
puts employee1.last_name
puts employee1.active
employee1.active = false
p employee1

manager = Actualize::Manager.new(
  first_name: "Saron",
  last_name: "Yitbarek",
  salary: 100000,
  active: true,
  employees: [employee1, employee2],
)
manager.print_info
manager.send_report

p manager.employees[0].last_name
p manager.employees[1].last_name

employee1.print_info
employee2.print_info
manager.give_all_raises
employee1.print_info
employee2.print_info

intern = Actualize::Intern.new(first_name: "Adrienne", last_name: "Lowe", salary: 50000, active: true)
intern.print_info
intern.send_report
