class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_and_belongs_to_many :websites

# roles
 SYSTEMADMIN = "0"
 ADMIN = "1"
 WORKER = "2"

 def website
   websites.find_by_id(current_website)
 end

 def website=(website=Website.new)
   self.current_website = website.id
 end

end
