class Code < ActiveRecord::Base

  def rotp
    ROTP::TOTP.new(key)
  end
  
  def current_token
    sprintf("%06d",rotp.now)
  end

end
