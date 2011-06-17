module UsersHelper
  def author(poster)
    @author = User.find(poster)     
    @author.username
  end

  def friend_finder(friendlist, id)
    friends_list = []

    friendlist.each do |friend|
     # frieds list whithout us 
     (friend.id_user.to_i != id.to_i) ? (friends_list << friend.id_user) : (friends_list << friend.id_friend)
    end

    friends_list.uniq! 
    User.where(:id => friends_list)
  end

end
