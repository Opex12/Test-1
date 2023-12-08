class Printable
  def print_info
    raise NotImplementedError, "Метод print_info повинен бути реалізований у підкласах"
  end
end

class Person < Printable
  def initialize(name, age)
    @name = name
    @age = age
  end

  def print_info
    puts "Ім'я: #{@name}, Вік: #{@age}"
  end
end

class Car < Printable
  def initialize(brand, model, year)
    @brand = brand
    @model = model
    @year = year
  end

  def print_info
    puts "Марка: #{@brand}, Модель: #{@model}, Рік випуску: #{@year}"
  end
end

person = Person.new("Володимир", 30)
car = Car.new("Запорожець", "Запорожець", 2022)

puts "Інформація про особу:"
person.print_info

puts "\nІнформація про автомобіль:"
car.print_info
