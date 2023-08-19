class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments, foreign_key: :author_id
  has_many :posts, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id
  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  after_initialize :init
  ROLES = %i[admin default].freeze

  def recent_three_posts
    posts.order(created_at: :desc).first(3)
  end

  def init
    self.posts_counter = 0 if posts_counter.blank?
    self.role = 'default' if role.blank?
  end

  def is?(requested_role)
    role == requested_role.to_s
  end
end
