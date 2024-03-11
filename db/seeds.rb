# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Chatroom.destroy_all
Task.destroy_all
Connection.destroy_all
Mentor.destroy_all
Mentee.destroy_all
User.destroy_all

# Create a user
user1 = User.create!({ email: "romeeweltevreden@hotmail.com",
        first_name: "Romee", last_name: "Weltevreden", location: "Amsterdam", password: "test123" })

user2 = User.create!(email: "test@hotmail.com",
        first_name: "Name", last_name: "Last_Name", location: "Zaandam", password: "test321")

user3 = User.create!(email: "annakarsten@hotmail.com",
        first_name: "Anna", last_name: "Karsten", location: "Haarlem", password: "TEST123")

user4 = User.create!(email: "test1@hotmail.com",
        first_name: "Test", last_name: "TEST", location: "Amsterdam", password: "TEST123")

user5 = User.create!(email: "testing@hotmail.com",
        first_name: "Test", last_name: "Ing", location: "Amstelveen", password: "TEST001")

user6 = User.create!(email: "fake@hotmail.com",
        first_name: "Fake", last_name: "Name", location: "Ouderkerk aan de Amstel", password: "TEST123")

user7 = User.create!(email: "romeew@hotmail.com",
        first_name: "Romee", last_name: "Weltevreden", location: "Amsterdam", password: "TEST123") #(DEMO DAY mentor)

user8 = User.create!(email: "annap@hotmail.com",
        first_name: "Anna", last_name: "Putt", location: "Amsterdam", password: "TEST123") #(DEMO DAY menteeeeeee)



# Create a mentor
mentor1 = Mentor.create!(job_title: "Software Developer", company: "le wagon", rating: 3, user: user1)
mentor2 = Mentor.create!(job_title: "Software Engineer", company: "le wagon", rating: 4, user: user2)
mentor3 = Mentor.create!(job_title: "Full-Stack Developer", company: "le wagon", rating: 4, user: user3)
mentor4 = Mentor.create!(job_title: "Front-End Developer", company: "Google", bio: "I'm a Front-End Developer at Google. Specializing in HTML, CSS, and JavaScript, I'm dedicated to elevating user interfaces and optimizing customer interactions. Committed to delivering cutting-edge design and functionality that enhances the Googlr experience. Let's innovate together in the world of e-commerce! 💻🌐✨", rating: 3, user: user4)
mentor5 = Mentor.create!(job_title: "Back-End Developer", company: "Amazon", bio: "Hey, I'm a Back-End Developer passionate about constructing robust server-side solutions. Proficient in languages like Python, Java, and frameworks like Django. From databases to APIs, I thrive on optimizing functionality behind the scenes. Let's bring efficiency to the digital realm, one line of code at a time! 🚀✨", rating: 4, user: user5)
mentor6 = Mentor.create!(job_title: "Product Owner", company: "Tesla", bio: "Greetings! I'm a dedicated product enthusiast committed to translating ideas into impactful solutions. With a passion for user-centric design and agile methodologies, I navigate the intersection of business goals and customer needs. Let's create products that resonate and drive meaningful change! 🌐✨", rating: 5, user: user6)
mentor7 = Mentor.create!(job_title: "Full-Stack developer", company: "Uber", bio:"Enthusiastic Fullstack Developer with a passion for building seamless web applications. Proficient in HTML, CSS, JavaScript, Node.js, and SQL/NoSQL databases. Committed to continuous learning, I thrive on solving complex problems and contributing to the developer community. Let's craft innovative solutions and shape the future of technology together! 💻✨", rating: 4, user: user7)


# mentor1.user = user1

# Create a mentee
mentee1 = Mentee.create!(goal: "Find a job in webdevelopment within 6 moths", bio:"Hello, I'm [Developer's Name], an aspiring developer embarking on a journey into the captivating world of coding. Armed with a zeal for learning, I'm diving into HTML, CSS, and JavaScript, eager to build my foundation. Excited to grow, collaborate, and turn imaginative ideas into tangible digital experiences." user: user8)
# mentee2 = Mentee.create!(goal: "I am going to become an experienced developer within 16 months", user: user3)
# mentee3 = Mentee.create!(goal: "I am	going to find a front-end job in 6 months", user: user4)
# mentee4 = Mentee.create!(goal: "I am going to become a full-stack developer within 1 year", user: user5)
# mentee5 = Mentee.create!(goal: "I am going to become an experiences back-end developer within 2 year", user: user6)
# mentee6 = Mentee.create!(goal: "I am want to become a scrum master in 1 year", user: user7)
# mentee7 = Mentee.create!(goal: "I am going to become a product owner within 1 year", user: user8)
# mentee8 = Mentee.create!(goal: "I am going to start as freelancer in 5 months", user: user1)


# Create a connection
connection = Connection.create!(mentor: mentor7, mentee: mentee1, status: true)
chatroom = Chatroom.create!(connection: connection)

# connection2 = Connection.create!(mentor: mentor2, mentee: mentee2, status: true)
# chatroom2 = Chatroom.create!(connection: connection2)

# connection3 = Connection.create!(mentor: mentor3, mentee: mentee3, status: true)
# chatroom3 = Chatroom.create!(connection: connection3)

# connection4 = Connection.create!(mentor: mentor4, mentee: mentee4, status: true)
# chatroom4 = Chatroom.create!(connection: connection4)

# connection5 = Connection.create!(mentor: mentor5, mentee: mentee5, status: true)
# chatroom5 = Chatroom.create!(connection: connection5)

# connection6 = Connection.create!(mentor: mentor6, mentee: mentee6, status: true)
# chatroom6 = Chatroom.create!(connection: connection6)

# connection7 = Connection.create!(mentor: mentor7, mentee: mentee7, status: true)
# chatroom7 = Chatroom.create!(connection: connection7)

# connection8 = Connection.create!(mentor: mentor8, mentee: mentee8, status: true)
# chatroom8 = Chatroom.create!(connection: connection8)

# Create a task
task1 = Task.create!(title: "Learn Ruby on Rails", description: "Start Le Wagon", end_date: "2024-03-15", completed: false, connection: connection)
task2 = Task.create!(title: "Create a portfolio", description: "Add all projects to GitHub account", end_date: "2024-03-25", completed: false, connection: connection)
task3 = Task.create!(title: "Learn JavaScript", description: "Follow JavaScript course", end_date: "2024-05-15", completed: false, connection: connection)
task4 = Task.create!(title: "Go to webevent", description: "Follow ted talk in Rai", end_date: "2024-04-12", completed: false, connection: connection)
task5 = Task.create!(title: "Update LinkedIn account", description: "Make sure all recent experienced is up to date", end_date: "2024-04-30", completed: false, connection: connection)
task6 = Task.create!(title: "Upload CV on job search websites", description: "Magnet.me, Indeed, LinkedIn etc", end_date: "2024-03-24", completed: false, connection: connection)
task7 = Task.create!(title: "Connect with recruiters", description: "send CV to 3 recruiters", end_date: "2024-05-10", completed: false, connection: connection)
