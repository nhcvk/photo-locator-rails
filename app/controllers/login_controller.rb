class LoginController < ApplicationController
  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze

  def wechat_params
    { appid: "#{ ENV['APP_ID']}",
      secret: "#{ENV['APP_SECRET']}",
      js_code: params[:code],
      grant_type: "authorization_code" }
  end

  def wechat_user
    @wechat_response || = RestClient.post(URL, wechat_params)

    @wechat_user || = JSON.parse(@wechat_repsonse.body)
  end

  def login
    @user = User.find_or_create_by(open_id:
      wechat_user.fetch("openid"))

    render json: {
      userId: @user.id
    }
  end

end
