class Year < ApplicationRecord
    has_many :stamps, :dependent => :destroy
end
