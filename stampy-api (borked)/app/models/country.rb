class Country < ApplicationRecord
    has_many :stamps, :dependent => :destroy
end
