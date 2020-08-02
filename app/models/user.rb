class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable,:omniauthable, omniauth_providers: [:google_oauth2]

  validates_confirmation_of :password  
  attr_accessor :password_confirmation 
  
  validates :nickname,
            presence: true,                     
            uniqueness: true,                   
            length: { maximum: 20 }            
  
  validates :email,
            presence: true,
            uniqueness: true,
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i } 
  
  validates :password,
            presence: true,                     
            length: { minimum: 7 },            
            format: { with: /\A[a-z0-9]+\z/i } 


  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    # sns認証したことがあればアソシエーションで取得
    # 無ければemailでユーザー検索して取得orビルド(保存はしない)
    user = sns.user || User.where(email: auth.info.email).first_or_initialize(
      nickname: auth.info.name,
      email: auth.info.email
    )
    # userが登録済みの場合はそのままログインの処理へ行くので、ここでsnsのuser_idを更新しておく
    if user.persisted?
      sns.user = user
      sns.save
    end
    user
  end
  

  has_many :posts
  has_one :sns_credential
end
