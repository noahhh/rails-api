u1 = User.create(email: 'user@example.com', password: 'password')
u2 = User.create(email: 'user2@example.com', password: 'password')
 
p1 = u1.posts.create(title: 'First Post', body: 'An Airplane Can Fly')
p2 = u1.posts.create(title: 'Second Post', body: 'A Train Can ChooChoo')
 
p3 = u2.posts.create(title: 'Third Post', body: 'A Truck Is Nice')
p4 = u2.posts.create(title: 'Fourth Post', body: 'A Boat Is Nice, Too')
 
p3.comments.create(body: "This post was terrible. GET IT AWAY.", user: u1)
p4.comments.create(body: "This post was the best thing in the whole world, I wish I could read it again for the first time.", user: u1)
