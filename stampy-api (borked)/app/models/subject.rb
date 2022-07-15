class Subject < ApplicationRecord
    has_many :stamps, :dependent => :destroy
end
