# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(email:'admin@escuela.com', password:'admin123456')
user = User.create(email:'client@app.com', password:'admin123456')
user = User.create(email:'tonyyucen@gmail.com', password:'admin123456')


student = Student.create(identification:'1001', name:'Tony', lastname:'Yu', gender:'Masculino');
student = Student.create(identification:'1002', name:'Adriana', lastname:'Fernandez', gender:'Femenino');
student = Student.create(identification:'1003', name:'Michel', lastname:'Pinson', gender:'Femenino');
student = Student.create(identification:'1004', name:'Andres', lastname:'Sandoval', gender:'Masculino');
student = Student.create(identification:'1005', name:'María', lastname:'Alejandra', gender:'Femenino');


teacher = Teacher.create(identification:'2001', name:'Tony', lastname:'Yu', gender:'Masculino');
teacher = Teacher.create(identification:'2002', name:'Moíses', lastname:'De la Torre', gender:'Masculino');
teacher = Teacher.create(identification:'2003', name:'Tatiana', lastname:'Rodriguez', gender:'Femenino');
teacher = Teacher.create(identification:'2004', name:'Luisa', lastname:'Andrea', gender:'Femenino');
teacher = Teacher.create(identification:'2005', name:'Mario', lastname:'Andres', gender:'Masculino');

course = Course.create(codigo:'3001', name:'Mantenimiento de pc', observation:'Abierto');
course = Course.create(codigo:'3002', name:'Multimedia', observation:'Abierto');
course = Course.create(codigo:'3003', name:'Base de datos oracle', observation:'Abierto');
course = Course.create(codigo:'3004', name:'Diseño gráfico', observation:'Abierto');
course = Course.create(codigo:'3005', name:'Física modena', observation:'Abierto');
