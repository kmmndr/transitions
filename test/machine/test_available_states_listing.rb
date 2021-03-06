require "helper"

class Bender
  include Transitions

  state_machine do
    state :drinking
    state :smoking
    state :gambling
  end
end

class TestAvailableStatesListing < Test::Unit::TestCase
  test 'available_states should return the states for the state machine' do
    assert_equal [:drinking, :gambling, :smoking], Bender.available_states
  end
end
