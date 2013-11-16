class User < ActiveRecord::Base
  include DiabetesMath

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :boluses
  has_many :basals

  def high_glucose_correction
    correction_bolus(self.current_bolus)
  end

end
