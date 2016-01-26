class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :first_name, :last_name, :nick_name,
                  :email, :password, :password_confirmation

  has_many :statuses

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :nick_name, presence: true, uniqueness: true, format: {
                                                                      with: /a-zA-Z0-9_-/,
                                                                      message: 'Debe estar formateado correctamente'
                                                                    }

  def complete_name
    first_name + " " + last_name
  end

end
