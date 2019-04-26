module LeaguesHelper

  def admin(league)
    User.find(league.admin_id)
  end

  def is_admin?(league)
    @user.id == league.admin_id
  end

end
