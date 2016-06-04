class User < ActiveRecord::Base
  has_secure_password
  # calling this method bascically injects what is written below right into this class


  # def password
  #   self.password_digest
  # end
  # # to call this function in the console, just type password = ''
  # def password=(thing)
  #   self.password_digest = BCrypt::Password.create(thing)
  # end
end
