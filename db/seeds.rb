user1 = User.create({ name: 'Veruca Salt', email: 'owner@domain.com', password: 'owner', type: 'User::Owner' })
user2 = User.create({ name: 'customer', email: 'customer@domain.com', password: 'customer', type: 'User::Owner' })

House.create({ name: 'Grand Old Mansion', kind: 'stand alone', image: '', location: 'San Francisco',user: user1, number_of_bedroom: 1 })
House.create({ name: 'Apartment Guevenica', kind: 'apartment', image: '', location: 'Guevenica', user: user1, number_of_bedroom: 2 })
