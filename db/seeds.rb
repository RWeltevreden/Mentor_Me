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
user1 = User.create!({ email: "maiia@hotmail.com",
        first_name: "Maiia", last_name: "Kuzmina", avatar_url: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", location: "Amsterdam", bio: "Experienced freelance software developer with expertise in [programming languages/technologies]. From creating seamless user interfaces to building robust backend systems, I specialize in crafting efficient and scalable solutions. A problem solver at heart, I thrive on turning diverse concepts into high-quality code. Let's collaborate and bring your digital ideas to life!", password: "test123" })

user2 = User.create!(email: "dogus@hotmail.com",
        first_name: "Dogus", last_name: "Akyuz", avatar_url:"https://images.unsplash.com/photo-1599566150163-29194dcaad36?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", location: "Zaandam", bio: "Dedicated software engineer at Shopify, specializing in [specific areas, e.g., backend development, front-end design]. Proven track record of crafting scalable and efficient solutions, ensuring a seamless shopping experience. Passionate about innovation and committed to maintaining Shopify's cutting-edge technology. Let's elevate your e-commerce platform together!", password: "test321")


user3 = User.create!(email: "david@hotmail.com",
        first_name: "David", last_name: "Ponte", avatar_url:"https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", password: "TEST123")

user4 = User.create!(email: "Jackie@hotmail.com",
        first_name: "Jackie", last_name: "Almeida Dos Santos", avatar_url: "https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=1961&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",location: "Amsterdam", bio: "I'm a Front-End Developer at Google. Specializing in HTML, CSS, and JavaScript, I'm dedicated to elevating user interfaces and optimizing customer interactions. Committed to delivering cutting-edge design and functionality that enhances the Googlr experience. Let's innovate together in the world of e-commerce! 💻🌐✨", password: "TEST123") #(MENTOR IN THE SWIPE)

user5 = User.create!(email: "Janis@hotmail.com",
        first_name: "Janis", last_name: "Jekabs Ivdris", avatar_url: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", location: "Amstelveen", bio: "Hey, I'm a Back-End Developer passionate about constructing robust server-side solutions. Proficient in languages like Python, Java, and frameworks like Django. From databases to APIs, I thrive on optimizing functionality behind the scenes. Let's bring efficiency to the digital realm, one line of code at a time! 🚀✨", password: "TEST001") #(MENTOR IN THE SWIPE)


user7 = User.create!(email: "romeew@hotmail.com",
        first_name: "Romee", last_name: "Weltevreden", avatar_url: "https://plus.unsplash.com/premium_photo-1658527049634-15142565537a?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", location: "Amsterdam", bio: "Enthusiastic Fullstack Developer with a passion for building seamless web applications. Proficient in HTML, CSS, JavaScript, Node.js, and SQL/NoSQL databases. Committed to continuous learning, I thrive on solving complex problems and contributing to the developer community. Let's craft innovative solutions and shape the future of technology together! 💻✨", password: "TEST123") #(DEMO DAY mentor!! WILL BE THE SET UP CONNECION WITH MENTEE)


user8 = User.create!(email: "annap@hotmail.com",
        first_name: "Anna", last_name: "Putt", avatar_url: "https://images.unsplash.com/photo-1568822617270-2c1579f8dfe2?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", location: "Amsterdam", bio:"Hello, I'm an aspiring developer embarking on a journey into the captivating world of coding. Armed with a zeal for learning, I'm diving into HTML, CSS, and JavaScript, eager to build my foundation. Excited to grow, collaborate, and turn imaginative ideas into tangible digital experiences.", password: "TEST123") #(DEMO DAY menteeeeeee (LOG IN WITH THIS ACCOUNT))



# Create a mentor
mentor1 = Mentor.create!(job_title: "Software Developer", company: "Freelancer", user: user1)
review1 = Review.create!(content: "Great mentor, very helpful", rating: 4, mentor: mentor1)
review2 = Review.create!(content: "Achieved my goal within set timeline!", rating: 5, mentor: mentor1)
review3 = Review.create!(content: "Very grateful for Maiia's coaching troughout my career change. With her help, I reached my goal of getting a traineeship as a Software Developer within 6 months", rating: 4, mentor: mentor1)

mentor2 = Mentor.create!(job_title: "Software Engineer", company: "Shopify", rating: 4, user: user2)
review1 = Review.create!(content: "Received lots of coaching, great mentor", rating: 3, mentor: mentor2)
review2 = Review.create!(content: "Great coach!", rating: 4, mentor: mentor2)

mentor3 = Mentor.create!(job_title: "Full-Stack Developer", company: "le wagon", rating: 4, user: user3)
review1 = Review.create!(content: "David was very helpful in his coaching and guiding me through the tasks that need to be done", rating: 5, mentor: mentor3)
review2 = Review.create!(content: "David definitely made my journey through a career change into IT a fun experience", rating: 3, mentor: mentor3)
review3 = Review.create!(content: "Throughout our mentorship journey, David has played an instrumental role in shaping not just my professional skills, but also my outlook towards challenges and opportunities.", rating: 5, mentor: mentor3)

mentor4 = Mentor.create!(job_title: "Front-End Developer", company: "Google", rating: 3, user: user4)
review1 = Review.create!(content: "Grateful for Jackie's help, can really recommend her as a mentor", rating: 4, mentor: mentor4)
review2 = Review.create!(content: "Jackie was always available on the chat whenever I needed help during my tasks, very happy with having done this journey with her", rating: 5, mentor: mentor4)

mentor5 = Mentor.create!(job_title: "Back-End Developer", company: "Amazon",  rating: 4, user: user5)
mentor7 = Mentor.create!(job_title: "Full-Stack developer", company: "Uber", rating: 4, user: user7)


# mentor1.user = user1

# Create a mentee
mentee1 = Mentee.create!(goal: "Finish Le Wagon Amsterdam", user: user8)
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
task1 = Task.create!(title: "Start Le Wagon", description: "Start Le Wagon", end_date: "2024-01-15", completed: true, connection: connection)
task2 = Task.create!(title: "Learn Ruby", description: "Do challenges", end_date: "2024-01-30", completed: true, connection: connection)
task3 = Task.create!(title: "Learn JavaScript", description: "Do flashcards", end_date: "2024-02-20", completed: true, connection: connection)
task4 = Task.create!(title: "Learn CSS. HTML", description: "do challenges", end_date: "2024-02-29", completed: false, connection: connection)
