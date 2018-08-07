mock = [
    {
        image_url: 'https://loremflickr.com/320/240',
        description: 'lovely road', 
        latitude: 44.07975,
        longitude: 146.75697,
        user_id: 1 
    }, 
    {
        image_url: 'https://loremflickr.com/320/240',
        description: 'nice mountain', 
        latitude:  -80.72885,
        longitude: -13.81245,
        user_id: 2 
    }, 
    {
        image_url: 'https://loremflickr.com/320/240',
        description: 'very hot', 
        latitude: -34.74393,
        longitude: -52.49895,
        user_id: 3 
    }, 
    {
        image_url: 'https://loremflickr.com/320/240',
        description: 'twisties!', 
        latitude: 18.54510,
        longitude: 70.15373,
        user_id: 4 
    }, 
    {
        image_url: 'https://loremflickr.com/320/240',
        description: 'rocks', 
        latitude: 41.54349,
        longitude: 23.90847,
        user_id: 5 
    }, 
    {
        image_url: 'https://loremflickr.com/320/240',
        description: 'super corners', 
        latitude:  -21.64221,
        longitude: -63.09435,
        user_id: 6 
    }, 
    {
        image_url: 'https://loremflickr.com/320/240',
        description: 'coffee club', 
        latitude: 7.94205,
        longitude: 16.50686,
        user_id: 7 
    }
]

Photo.create(mock)

puts "#{mock.length} stories have been added"


mockUser = [
    {
        open_id: "1"
    },
    {
        open_id: "2"
    },
    {
        open_id: "3"
    }
]

User.create(mockUser)

puts "#{mockUser.length} users have been added"



mockBookmark = [
    {
        user_id: 1,
        photo_id: 1
    }, 
    {
        user_id: 2,
        photo_id: 2
    }, 
    {
        user_id: 2,
        photo_id: 1
    }, 
    {
        user_id: 2,
        photo_id: 6
    }
]

Bookmark.create(mockBookmark)

puts "#{mockBookmark.length} bookmarks have been added"