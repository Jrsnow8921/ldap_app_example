class User < ActiveRecord::Base
    include Adauth::UserModel
end
