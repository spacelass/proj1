class Pokemon < ApplicationRecord
	belongs_to :trainer, optional: true
	validates_presence_of :name, :message => "Pokemon must have name"
	validates_uniqueness_of :name, :message => "Pokemon name must be unique"
end
