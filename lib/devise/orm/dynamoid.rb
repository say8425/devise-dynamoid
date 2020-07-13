# frozen_string_literal: true

require 'orm_adapter-dynamoid'

ActiveSupport.on_load(:dynamoid) do
  Dynamoid::Document::ClassMethods.include Devise::Models
end
