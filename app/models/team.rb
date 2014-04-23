class Team < ActiveRecord::Base
  has_many :mutants
  has_many :tasks
end
