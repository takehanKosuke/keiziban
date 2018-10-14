user_articles = [
  {
    user: {
      email: 'test1@test.com',
      password: '111111',
      name: 'kosuke',
      image:'/assets/user1.jpg',
      role: 1
    },
    articles: {
      title: 'test1 article',
      contents: 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest',
      article_images_attributes: [
        {
          image: '/assets/article1.jpg'
        },
        {
          image: '/assets/article2.jpg'
        }
      ]
    }
  },
  {
    user: {
      email: 'test2@test.com',
      password: '111111',
      name: 'yuuta',
      image:'/assets/user2.jpg',
      role: 1
    },
    articles: {
      title: 'test2 article',
      contents: 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest',
      article_images_attributes: [
        {
          image: '/assets/article3.jpg'
        },
        {
          image: '/assets/article4.jpg'
        }
      ]
    }
  }
]

puts 'Create users and articles...'
user_articles.each do |instance|
  user = User.create!(instance[:user])
  puts "Create a user #{user.name}"
  host = user.create_article!(instance[:article])
  puts "Create a article"
end
