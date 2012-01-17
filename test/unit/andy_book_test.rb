require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def test_create
    post(:create, :book => { title: "My Test", author: "Testy McTesterson" })

    assert_response :found

    #assert_not_nil Book.find
   end
end
