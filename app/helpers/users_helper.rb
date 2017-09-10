module UsersHelper
  def gravater_url(user, options = { size: 80 })
    gravater_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    "https://secure.gravater.com/avater/#{gravater_id}?s=#{size}&d=mm"
  end
end
