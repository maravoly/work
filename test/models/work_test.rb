require "test_helper"

class WorkTest < ActiveSupport::TestCase
    test 'valid work' do
    
    work = works(:Ingeniero_de_Control_y_Programación)
    
    work.user = User.create!(email:'maravoly@gmail.com', password: 12345678)
    assert work.valid?
    
  end
end


