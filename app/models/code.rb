class Code < ActiveRecord::Base

  def rotp
    ROTP::TOTP.new(key)
  end
  
  def current_token
    rotp.now 
  end

end
