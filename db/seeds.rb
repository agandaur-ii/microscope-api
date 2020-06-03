Body.delete_all
Icon.delete_all
Board.delete_all

User.delete_all



chris = User.create(first_name: "Chris", last_name: "Wagstaffe", username: "test", password: "test")

# world = Board.create(title: "World Travels", 
# background_img: "https://i.pinimg.com/originals/f0/e1/86/f0e1869820b56bcc79819dee3f35490e.jpg", 
# user_id: chris.id)

# denmark = Icon.create(title: "Denmark", board_id: world.id)
# dbody = Body.create(description: "Happiest country in the world",
# body_type: "board", 
# content: "https://www.enchantedlearning.com/europe/denmark/outlinemap/map.GIF", 
# icon_id: denmark.id)

# armenia = Icon.create(title: "Armenia", board_id: world.id)
# abody = Body.create(description: "Views of Mt. Ararat!",
# body_type: "image", 
# content: "https://www.enchantedlearning.com/asia/armenia/outlinemap/map.GIF", 
# icon_id: armenia.id)

# denmarkBoard = Board.create(title: "Denmark", 
# background_img: "https://www.enchantedlearning.com/europe/denmark/outlinemap/map.GIF",
# user_id: chris.id, 
# parent: world
# ) 

# copenhagen = Icon.create(title: "Copenhagen", board_id: denmarkBoard.id)
# copbody = Body.create(description: "The Danish Capitol",
# body_type: "image", 
# content: "https://thumbor.forbes.com/thumbor/711x490/https://specials-images.forbesimg.com/dam/imageserve/1128749011/960x0.jpg?fit=scale", 
# icon_id: copenhagen.id)

# skagen = Icon.create(title: "Skagen", board_id: denmarkBoard.id)
# skabody = Body.create(description: "Unique Quality of Light!",
# body_type: "image", 
# content: "https://i.pinimg.com/originals/2e/a9/a5/2ea9a52c0f0e4d9504db47286d3d4f8f.jpg", 
# icon_id: skagen.id)


