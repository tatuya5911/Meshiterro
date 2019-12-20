class PostImage < ApplicationRecord

	belongs_to :user
	#has_manyとは逆の機能になります。
	#belongs_toは、PostImageモデルからuser_idに関連付けられていて、Userモデルを参照することができます。
	attachment :image
end
