class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :lodgings, dependent: :destroy
  has_many :valorarhs, dependent: :destroy
  has_many :reservas, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   validates_format_of :name, :apellido, with: /\A[a-zA-Z]+\z/,
    message: ":Sólo letras permitidas"
    
   validates_presence_of :name, :apellido, :edad, message: ":Es requerido/a"
   

end
