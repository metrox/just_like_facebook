module UsersHelper
  def author(poster)
    @author = User.find(poster)     
    @author.username
  end

  def friend_finder(friendlist, id)
    friends_list = []

<<<<<<< HEAD
    #usunac te w ktorych uzytkownik nie bierze udzialu
    friendlist.reject! {|friend| friend.id_user.to_i != id.to_i && 
friend.id_friend.to_i != id.to_i  }    

=======
>>>>>>> 454cc998c5539ed6d2c06322bcd51d4db10c4b9b
    friendlist.each do |friend|
     # frieds list whithout us 
     (friend.id_user.to_i != id.to_i) ? (friends_list << friend.id_user) : (friends_list << friend.id_friend)
    end

    friends_list.uniq! 
    User.where(:id => friends_list)
  end

end
