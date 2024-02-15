admin = User.create!(
  name: 'Admin',
  email: 'admin@example.com',
  password: 'secure_password',
  password_confirmation: 'secure_password',
  admin: true
)

Article.create!(
  title: 'The First Article',
  content: 'This is the first article in the database. It is a test article to see if the database is working properly.',
  user_id: admin.id
)

Article.create!(
  title: 'The Second Article',
  content: 
    'This is the second article in the database. It is a test article to see if the database is working properly.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'\
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque ultricies porttitor. Donec hendrerit lacinia tincidunt. '\
    'Maecenas maximus tristique aliquet. Morbi elementum, sapien ut tempus finibus, elit felis varius felis, id malesuada tortor felis a sapien.'\
    'Ut vulputate at libero ac tempus. Duis magna augue, scelerisque nec justo vel, tincidunt ultricies velit. Maecenas vulputate lorem sed finibus finibus. Etiam id feugiat dolor.'
  user_id: admin.id
)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
