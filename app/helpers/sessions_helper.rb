module SessionsHelper

def sign_in(user)
  cookies.permanent.signed[:remember_token] = [user.id, user.salt]
  current_user = user
end

# 
def current_user=(user)
  @current_user = user
end
# 
  def current_user
    @current_user ||= user_from_remember_token
end
#   
  def signed_in?
    !current_user.nil?
  end
#   
#   def sign_out
#     cookies.delete(:remember_token)
#     self.current_user = nil
#   end
#   
#   
  # def redirect_back_or(default)
  #   redirect_to(session[:return_to] || default)
  #   clear_return_to
  # end
#   
#   
  private
# 
    
    def user_from_remember_token
      User.authenticate_with_salt(*remember_token)  # The * makes error move to another without it we get wrong number of aruments with it we get no defined signed in
    end
    
    
# 
    def remember_token
      cookies.signed[:remember_token] || [nil, nil]
end
end