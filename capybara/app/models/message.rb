class Message < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :user_id

  def self.like(content)
    content.nil? ? [] : where(['content LIKE ?', "%#{content}%"])
  end
end
