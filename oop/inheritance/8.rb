#determine lookup path for cat1.color

class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
cat1.color

#Lookup path:
  #Cat
  #Animal
  #Object
  #Kernel
  #BasicObject