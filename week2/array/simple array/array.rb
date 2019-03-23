friends  = [ "Marry", "Lucy", "Mike", "Paul", "Chris" ]

lengths = friends.map {|friend| friend.length }
p lengths

found_friend = friends.find {|friend| friend[0] == "P"}
p found_friend

found_friend = friends.find {|friend| friend[2] == "c"}
p found_friend
