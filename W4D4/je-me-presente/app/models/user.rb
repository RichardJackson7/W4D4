class User < ApplicationRecord
	validates :user_name, 
			uniqueness:true,
			format: { with: /\A[a-zA-Z0-9]+\Z/ }
end