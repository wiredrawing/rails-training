class Like < ApplicationRecord

  validates(:source_user_id, { :presence => true})
  validates(:destination_user_id, { :presence => true})
  validates(:reason, { :presence => true})
  validates(:request, { :presence => true})
end
