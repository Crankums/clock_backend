# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##Write Employee Seed File!

 employees = Employee.create([{ name: "Frank Johnson",
        employee_id: 0001,
        password: "password",
        email: "fjohnson@clocko.com",
        phone_number: "555-123-5678",
        job_id: 0100},
        { name: "Jenny O'Malley",
        employee_id: 0002,
        password: "password",
        email: "jomalley@clocko.com",
        phone_number: "246-810-1214",
        job_id: 0200},
        { name: "Alice Fujita",
        employee_id: 0003,
        password: "password",
        email: "afujita@clocko.com",
        phone_number: "123-567-8910",
        job_id: 0300}])