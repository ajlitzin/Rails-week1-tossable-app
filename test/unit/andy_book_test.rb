require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "create without author" do
    b = Book.new( title: "My Test")
    assert !b.save, "Saved without an author"

  end

# this test passes, but it doesn't actually seem to create a book
# not sure what its testing
# also probably a better way to do this as it will fail after the 2nd time you
# run it because the book will exist (if this worked) unless you wipe the db
# between test runs
  test "successful create" do
    b = Book.new( title: "My Test", author: "Testy McTesterson")
    assert b.save, "Saved a new book"
  end
end
