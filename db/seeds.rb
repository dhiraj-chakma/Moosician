require "open-uri"

Message.destroy_all
Comment.destroy_all
Like.destroy_all
Post.destroy_all
User.destroy_all
Chatroom.destroy_all


users1 = User.new(email: "kanyecrazy2023@gmail.com", password: "12345678",password_confirmation:"12345678" ,username:"Kanye_crzy" ,
bio:" - Our focus needs to be less about what our legacy is going to be or how we can control each other, but more about how we can gift each other. My mother Donda always told me KANYE make sure you always All Gas No Breaks - Yes I am better than jay-z  - Rapper/Beats",location: "Chicago,Illinois",admin:true,first_name:"Kanye",last_name:"East")
users1.photo.attach(io: URI.open("https://imageio.forbes.com/specials-images/imageserve/5ed00f17d4a99d0006d2e738/0x0.jpg?format=jpg&crop=4666,4663,x154,y651,safe&height=416&width=416&fit=bounds"), filename: "nes1.png", content_type: "image/png")
users1.save!
unless users1.save
  puts users1.errors.full_messages
end

users2 = User.new(email: "yungthugga022@gmail.com", password:"12345678", password_confirmation:"12345678",username:"Youngthug_01" ,
bio:" We're born alone, we live alone, we die alone. Only through our love and music can we create the illusion for the moment that we're not alone. - Rapper", location: "Thug's World", first_name:"Young",last_name:"Thug")
users2.photo.attach(io: URI.open("https://img.buzzfeed.com/buzzfeed-static/complex/images/uwr3uur8lmnj79v40c8j/young-thug-bumbershoot-suzi-pratt.jpg?output-format=jpg&output-quality=auto"), filename: "nes2.png", content_type: "image/png")
users2.save!
unless users2.save
  puts users1.errors.full_messages
end

users3 = User.new(email: "1future@gmail.com", password:"12345678",password_confirmation:"12345678",username:"PLUTOHENDRIX_" ,
bio:"I don't write hits for myself, or for other artists, or to just be writing it. I write it because I was born to do this. I was given this gift and I'm making the most of my opportunity. - Rapper " ,location: " Atlanta, Georgia",first_name:"FUTURE",last_name:"Hendrix")
users3.photo.attach(io: URI.open("https://www.nme.com/wp-content/uploads/2020/05/prince-williams-future-getty-2020.jpg"), filename: "nes3.png", content_type: "image/png")
users3.save!
unless users3.save
  puts users1.errors.full_messages
end

users4 = User.new(email: "TayKeithrosssata@hotmail.com", password:"12345678",password_confirmation:"12345678", username:"Tay_Keith" ,
bio:" - Get it done. Ain’t no excuses - Producer", location: "Memphis, TN",first_name:"Tay",last_name:"Keith")
users4.photo.attach(io: URI.open("https://www.billboard.com/wp-content/uploads/2021/02/Tay-Keith-2019-billboard-1548-1613665062.jpg"), filename: "nes4.png", content_type: "image/png")
users4.save!
unless users4.save
  puts users1.errors.full_messages
end

users5 = User.new(email: "badbunny@hotmail.com", password:"12345678", password_confirmation:"12345678", username:"BAD_Bunny" ,
bio:" - Antes de que salga el sol y hunda el acelerador - Singer", location: "Costa, Rica",first_name:"Bad",last_name:"Bunny")
users5.photo.attach(io: URI.open("https://www.billboard.com/wp-content/uploads/2023/02/Bad-Bunny-2022-billboard-pro-1260.jpg?w=942&h=623&crop=1"), filename: "nes5.png", content_type: "image/png")
users5.save!
unless users5.save
  puts users1.errors.full_messages
end



chatrooms1 = Chatroom.create!(user_1: users1.id, user_2: users2.id)
chatrooms2 = Chatroom.create!(user_1: users3.id, user_2: users4.id)
chatrooms3 = Chatroom.create!(user_1: users1.id, user_2: users3.id)
chatrooms4 = Chatroom.create!(user_1: users4.id, user_2: users5.id)
chatrooms5 = Chatroom.create!(user_1: users2.id, user_2: users5.id)
chatrooms6 = Chatroom.create!(user_1: users2.id, user_2: users3.id)
chatrooms7 = Chatroom.create!(user_1: users2.id, user_2: users4.id)


   Message.create!(content: "Whats up my man?",chatroom:chatrooms1,user:users2)
   Message.create!(content: "How you doing bro?",chatroom:chatrooms1,user:users1)
   Message.create!(content: "whats up",chatroom:chatrooms2,user:users3)
   Message.create!(content: "yooo man ive just seen your post would love to collab",chatroom:chatrooms2,user:users4)
   Message.create(content:"Long time noo speak",chatroom:chatrooms3,user:users1)
   Message.create(content:"yooo man ive just seen your post would love to collab",chatroom:chatrooms3,user:users3)
   Message.create(content:"heard you was looking for a collab",chatroom:chatrooms4,user:users4)
   Message.create(content:"when you next in LA bro , got a studio!",chatroom:chatrooms4,user:users5)
   Message.create(content:"Heard about the break up, are you ok?",chatroom:chatrooms5,user:users5)
   Message.create(content:"Yo bro, text me back!?!",chatroom:chatrooms6,user:users3)
   Message.create(content:"Studio is booked, see you friday!",chatroom:chatrooms7,user:users4)





   posts1 = Post.create!(title: "whats on your mind moosician",
   description: "I WISH I WAS RICHER - comming out soon, looking for someone to feature...",
   category: "rap",
   user:users1,
    music_url:"https://youtu.be/MaJkOEOi9lA?si=vC-cjzWrhNmn66EU",
    embed_url: '<iframe width="560" height="315" src="https://www.youtube.com/embed/MaJkOEOi9lA?si=vC-cjzWrhNmn66EU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
  )

   posts2 = Post.create(title: "whats on your mind moosician",
   description: "New track droping sooon, here's a sample.",
   category: "rap",
   user:users2,
   music_url:"https://youtu.be/Kb_HjCqLLyc?si=7l69qRH-aBJZTVBg",
   embed_url: '<iframe width="560" height="315" src="https://www.youtube.com/embed/Kb_HjCqLLyc?si=7l69qRH-aBJZTVBg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
  )

  posts4= Post.create(title: "whats on your mind moosician",
  description: "Need a collab who makes beats, looking for something with a Dancehall vibe.",
  category: "rap",
  user:users4,
 #  music_url:"https://youtu.be/Q8RBX06xtiE?si=LIGoN3WIGyTOU7oI"
 )
   posts3 = Post.create(title: "whats on your mind moosician",
   description: "Trap beat I made last night, what do you guys think?",
   category: "rap",
   user:users3,
   music_url:"https://youtu.be/4ozcaBKyXQ0?si=wbCyizdvH1QP1W0x",
   embed_url: '<iframe width="560" height="315" src="https://www.youtube.com/embed/4ozcaBKyXQ0?si=wbCyizdvH1QP1W0x" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
  )


   posts5= Post.create(title: "whats on your mind moosician",
   description: "Wrote these lyrics for this track but can't get the mix right, any sound engineers wanna help?",
   category: "jazz",
   user:users5,
  #  music_url:"https://youtu.be/o2Vw4llfoQ8?si=AC8W1EFWDSzoD_z2"
  )


  posts6 = Post.create!(title: "whats on your mind moosician",
    description: "What female artists you guys rocking with at the moment",
    category: "rap",
    user:users2
   )


   posts7 = Post.create!(title: "whats on your mind moosician",
    description: "it takes a lot to be the best producer/rapper in the world",
    category: "rap",
    user:users1
   )

   posts8 = Post.create!(title: "whats on your mind moosician",
    description: "Hahaha the prices you guys want for beats that takes us days to make is funny",
    category: "rap",
    user:users4
   )

   posts9 = Post.create!(title: "whats on your mind moosician",
    description: "Hace mucho tiempo le hago caso al corazón
    Y pasan los día', los mese’ pensando en tu olor (En tu olor, en tu olor)",
    category: "rap",
    user:users5
   )

   posts10 = Post.create!(title: "whats on your mind moosician",
    description: "Locked in album mode , need all the fire producers and beat makers to hit me up ya heard",
    category: "rap",
    user:users3
   )

   posts11 = Post.create!(title: "whats on your mind moosician",
    description: "I wonder if anyone is going through heart break i got them melodic heart break beats on deck!",
    category: "rap",
    user:users4
   )

   posts12 = Post.create!(title: "whats on your mind moosician",
    description: "I think we ready to go to the next level now",
    category: "rap",
    user:users1
   )

   posts11 = Post.create!(title: "whats on your mind moosician",
    description: "beats on beats in my inbox yet none of them good enough sigh",
    category: "rap",
    user:users3
   )

   posts12 = Post.create!(title: "whats on your mind moosician",
    description: "reggaeton to the world and backkk suiiiii ",
    category: "rap",
    user:users5
   )



   Comment.create!(content:"leet me see what i can do for you boss",user:users1,post:posts1)
   Comment.create(content:"I am a huge fan man keep it up",user:users2,post:posts1)
  Comment.create(content:"We need to link up sooon",user:users3,post:posts1)
  Comment.create(content:"check your dms",user:users4,post:posts1)
  Comment.create(content:"I always thought you should get more recognition bro",user:users5,post:posts1)
  Comment.create(content:"We need to link up sooon",user:users3,post:posts2)
  Comment.create(content:"Papi you fire ",user:users5,post:posts2)
  Comment.create(content:"THUGGA HAHA MY BOY ",user:users1,post:posts2)
  Comment.create(content:"This is fire!",user:users4,post:posts2)
  Comment.create(content:"Would love to discuss this more, sent you a message...",user:users5,post:posts2)
  Comment.create(content:"Would love to discuss this more, sent you a message...",user:users4,post:posts3)
  Comment.create(content:"i always thought you should get more recognition bro",user:users5,post:posts3)
  Comment.create!(content:"leet me see what i can do for you boss",user:users1,post:posts3)
  Comment.create(content:"check your dms",user:users4,post:posts4)
  Comment.create(content:"i always thought you should get more recognition bro",user:users5,post:posts4)
  Comment.create(content:"We need to link up sooon",user:users3,post:posts4)
  Comment.create(content:"check your dms",user:users4,post:posts4)
  Comment.create(content:"i always thought you should get more recognition bro",user:users5,post:posts5)
  Comment.create(content:"check your dms",user:users4,post:posts5)



  Like.create!(user:users1,post:posts1)
  Like.create(user:users1,post:posts3)
  Like.create(user:users1,post:posts2)
  Like.create(user:users1,post:posts4)
  Like.create(user:users1,post:posts5)
  Like.create!(user:users5,post:posts1)
  Like.create(user:users5,post:posts3)
  Like.create(user:users5,post:posts2)
  Like.create(user:users5,post:posts4)
  Like.create(user:users5,post:posts5)
  Like.create!(user:users3,post:posts1)
  Like.create(user:users3,post:posts2)
  Like.create(user:users3,post:posts5)
  Like.create!(user:users4,post:posts1)
  Like.create(user:users4,post:posts5)
