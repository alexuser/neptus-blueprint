class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :username, :email, :password, :password_confirmation, :remember_me

  attr_accessible :name, :entrance_year, :expected_year, :college, :major

  # university requirements
  attr_accessible :entry_level_writing
  attr_accessible :american_history_and_institutions

  # campus requirement
  attr_accessible :american_cultures

  # ls requirements
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

  # major requirements
  attr_accessible :cs_sixtyonea
  attr_accessible :cs_sixtyoneb
  attr_accessible :cs_sixtyonec
  attr_accessible :math_onea
  attr_accessible :math_oneb
  attr_accessible :math_fiftyfour
  attr_accessible :cs_seventy
  attr_accessible :ee_fourty
  attr_accessible :ee_twenty
  attr_accessible :ee_fourtytwo
  attr_accessible :cs_conefourtynine
  attr_accessible :cs_oneseventy
  attr_accessible :cs_onesixtytwo
  attr_accessible :cs_onefifty
  attr_accessible :cs_onefiftytwo 
  attr_accessible :cs_onesixty
  attr_accessible :cs_onesixtyone
  attr_accessible :cs_onesixtyfour
  attr_accessible :cs_onesixtynine
  attr_accessible :cs_oneeightyfour
  attr_accessible :cs_oneeightysix
  attr_accessible :cs_oneeightyeight
  attr_accessible :cs_conefourtynine

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

  def to_s
    read_attribute(:name)
  end
  
  def email
    read_attribute(:email)
  end
    
  
  
end