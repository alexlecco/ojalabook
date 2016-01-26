require 'test_helper'

class RutasPersonalizadasTest < ActionDispatch::IntegrationTest

    test "el /login abre la pagina de inicio de sesion" do
      get '/comenzar'
      assert_response :success
    end

    test "el /logout abre la pagina de cierre de sesion" do
      get '/destruir'
      assert_response :success
      assert_redirected_to '/'
    end

    test "el /sign_up abre la pagina de registro de usuario" do
      get '/registrar'
      assert_response :success
    end

end
