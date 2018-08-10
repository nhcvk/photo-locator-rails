class LoginController < ApplicationController
  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze

  def wechat_params
    { appid: "#{ ENV['APP_ID']}",
      secret: "#{ENV['APP_SECRET']}",
      js_code: params[:code],
      grant_type: "authorization_code" }

  end

  def wechat_user
    # puts "wechat_params"
    # puts wechat_params
    # puts "Url"
    # puts URL

    res = RestClient.post(URL, wechat_params )

    # puts "wechat_response"
    # puts res.body
    @wechat_user ||= JSON.parse(res.body)
  end

  def login
    @user = User.find_or_create_by(open_id:
      wechat_user.fetch("openid"))

    render json: {
      userId: @user.id
    }
  end

end
