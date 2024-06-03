class Hive < ApplicationRecord
    validates_length_of :name, minimum: 6
end
