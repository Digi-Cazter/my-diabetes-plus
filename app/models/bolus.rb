class Bolus < ActiveRecord::Base
  include DiabetesMath

  belongs_to :user

end