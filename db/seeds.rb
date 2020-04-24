Body.delete_all
Icon.delete_all
Board.delete_all

User.delete_all



chris = User.create(first_name: "Chris", last_name: "Wagstaffe", username: "test", password: "test")

world = Board.create(title: "World Travels", 
background_img: "https://i.pinimg.com/originals/f0/e1/86/f0e1869820b56bcc79819dee3f35490e.jpg", 
user_id: chris.id)

denmark = Icon.create(title: "Denmark", board_id: world.id)
dbody = Body.create(description: "Happiest country in the world", type: "board", content: "img_url", icon_id: denmark.id)

armenia = Icon.create(title: "Armenia", board_id: world.id)
abody = Body.create((description: "Views of Mt. Ararat!", type: "board", content: "img_url", icon_id: armenia.id))

denmarkBoard = Board.create(title: "Denmark", 
background_img: "test",
user_id: chris.id, 
parent: world
) 

copenhagen = Icon.create(title: "Copenhagen", board_id: denmarkBoard.id)
skagen = Icon.create(title: "Skagen", board_id: denmarkBoard.id)


