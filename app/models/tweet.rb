class Tweet < ApplicationRecord
 belongs_to :users, optional: true
end
