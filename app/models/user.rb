class User < ApplicationRecord
	
	has_secure_password
	belongs_to :family

end


# Family has many Children & Users
# Children belong to Family
# Users belong to Family

