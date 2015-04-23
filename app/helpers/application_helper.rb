module ApplicationHelper

	def totalprods
   Product.all.joins(:users).where("created_by_id LIKE current_user.id").count
  end

end
