class Basal < ActiveRecord::Base
  include DiabetesMath

  belongs_to :user

end