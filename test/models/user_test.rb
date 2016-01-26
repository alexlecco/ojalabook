require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "un usuario debería ingresar su nombre" do
    user = User.new
    assert !user.save
    assert !user.errors[:first_name].empty?
  end

  test "un usuario debería ingresar su apellido" do
    user = User.new
    assert !user.save
    assert !user.errors[:last_name].empty?
  end

  test "un usuario debería ingresar su nombre de usuario" do
    user = User.new
    assert !user.save
    assert !user.errors[:nick_name].empty?
  end

=begin
  test "el nombre de usuario debería ser unico" do
    user = User.new
    user.nick_name = users(:lecco).nick_name
    user.password_confirmation = "alexlecco"
    assert !user.save
    assert !user.errors[:nick_name].empty?
  end
=end

  test "el nombre de usuario debe tener un formato" do
    user = User.new
    user.nick_name = "Mi nombre con espacios"
    assert !user.save
    assert !user.errors[:nick_name].empty?
    assert user.errors[:nick_name].include?("Debe estar formateado correctamente")
  end

end
