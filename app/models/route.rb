class Route < ApplicationRecord

  validates :title, :total_time, :activity, :distance, :description, :start_point,
      :end_point, :user_id, presence: true
  validates :activity, :title, :description, length: { minimum: 3 }

  belongs_to :user, 
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id
  

  def creator_id
    user.id
  end

end
