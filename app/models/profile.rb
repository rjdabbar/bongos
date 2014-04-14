class Profile < ActiveRecord::Base
  belongs_to :user

  def self.create_for(user)

    url = URI.parse("http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=#{ENV['STEAM_WEB_API_KEY']}&steamids=#{user.uid}")
    res = Net::HTTP::get(url)
    parse = JSON.parse(res)
    hash = parse["response"]["players"].first
    
    create! do |profile|
      profile.name = hash["personaname"]
      profile.steam_id = hash["steamid"]
      profile.avatar = hash["avatar"]
      profile.avatar_medium = hash["avatarmedium"]
      profile.avatar_full = hash["avatarfull"]
      profile.persona_state = hash["personastate"]
      profile.profile_url = hash["profileurl"]
      profile.user_id = user.id
    end
  end
end
