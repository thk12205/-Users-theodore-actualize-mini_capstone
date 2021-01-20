# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "Magicka 2", price: 20, image_url: "https://hb.imgix.net/3eb9e778e041b29dd7f9f408ebcd4b2ef2c9e3ce.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=e91b52f3d9ee5f1c4e8d5d41be61a4da", description: "Magicka is a satirical action-adventure game set in a rich fantasy world based on Norse mythology. The player assumes the role of a wizard from a sacred order tasked with stopping an evil sorcerer who has thrown the world into turmoil, his foul creations besieging the forces of good.")
Product.create(name: "Overwatch", price: 40, image_url: "https://overwatch2-static.playoverwatch.com/b0f535eef6226715713a43d549c6561aef1412b0/static/images/share.jpg", description: "Overwatch is a vibrant team-based shooter set on a near-future earth. Every match is an intense 6v6 battle between a cast of unique heroes, each with their own set of talents")
Product.create(name: "Rain World", price: 20, image_url: "https://rainworldgame.com/images/anims/1.gif", description: "You are a nomadic slugcat, both predator and prey in a broken ecosystem. Grab your spear and brave the industrial wastes, hunting enough food to survive, but be wary— other, bigger creatures have the same plan... and slugcats look delicious.")
Product.create(name: "Team Fortress 2", price: 0, image_url: "https://static.wikia.nocookie.net/p__/images/5/57/TF2_Mercs.png/revision/latest?cb=20200110144933&path-prefix=protagonist", description: "Nine distinct classes provide a broad range of tactical abilities and personalities. Constantly updated with new game modes, maps, equipment and, most importantly, hats!")
Product.create(name: "Untitled Goose Game", price: 15, image_url: "https://steamcdn-a.akamaihd.net/steam/apps/837470/capsule_616x353.jpg?t=1600880386", description: "It's a lovely morning in the village and you are a horrible goose.")
Product.create(name: "Ori and the Blind Forest", price: 30, image_url: "https://i.ytimg.com/vi/cklw-Yu3moE/maxresdefault.jpg", description: "Play the critically acclaimed masterpiece. Embark on a new journey in a vast, exotic world where you’ll encounter towering enemies and challenging puzzles on your quest to unravel Ori’s destiny.")
Product.create(name: "Legend of Zelda: Breath of the Wild", price: 60, image_url: "https://cdn.images.express.co.uk/img/dynamic/143/590x/Zelda-Breath-of-the-Wild-2-1247184.jpg?r=1582651444723", description: "Step into a world of discovery, exploration and adventure in The Legend of Zelda")

#name:string price:integer image_url:string description:string