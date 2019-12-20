class PostImage < ApplicationRecord

	belongs_to :user
	#has_manyとは逆の機能になります。
	#belongs_toは、PostImageモデルからuser_idに関連付けられていて、Userモデルを参照することができます。
	attachment :image
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	validates :shop_name, presence: true
    validates :image, presence: true

    def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
    end
end
