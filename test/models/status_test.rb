require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "un estado requiere contenid" do
    status = Status.new
    assert !status,save
    assert !status.errors[:content].empty?
  end

  test "cada estado debe contener al menos 2 letras" do
    status = Status.new
    status.content = "B"
    assert !status.save
    assert !status.errors[:content].empty?
  end

  test "cada estado debe tener un user_id" do
    status = Status.new
    status.content = "Hola mundo"
    assert !status.save
    assert !status.errors[:user_id].empty?
  end
end
