class Toot < ApplicationRecord
  belongs_to :user

  default_scope { order(created_at: :desc)}

  def self.toots_for(ids)
    where(user_id: ids).order(created_at: :desc)
  end

end
