class LoginController < ApplicationController
  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze

  def wechat_params
    { appid: wxfbe5c8b6a584ce04,
      secret: 65630db79da245ee4fb15b2178ed4f2a,
      js_code: params[:code],
      grant_type: "authorization_code" }
  end

  def wechat_user
    @wechat_response || = RestClient.post( URL, wechat_params )

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
