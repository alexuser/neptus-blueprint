class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :username, :email, :password, :password_confirmation, :remember_me

  attr_accessible :name, :entrance_year, :expected_year, :college, :major

  attr_accessible :entry_level_writing
  attr_accessible :american_history_and_institutions
  attr_accessible :american_cultures
  attr_accessible :reading_and_composition
  attr_accessible :quantitative_reasoning
  attr_accessible :foreign_language_breadth
  attr_accessible :arts_and_literature   
  attr_accessible :biological_science
  attr_accessible :historical_studies
  attr_accessible :international_studies 
  attr_accessible :philosophy_and_values 
  attr_accessible :physical_science 
  attr_accessible :social_and_behavioral_sciences

  # attr_accessible :title, :body
  attr_accessor :login


  validates :username,
  		:uniqueness => {
    	:case_sensitive => false
  		}

  def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
  end


end
