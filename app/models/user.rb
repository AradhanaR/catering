class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  attr_accessor :login
  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_name,
                  :first_name,
                  :last_name
end
