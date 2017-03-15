# User.create!([
#   {email: "test01@test.jp", encrypted_password: "$2a$11$F7HcoibhOGQKUvRzy4dSZuxJ7k33QjuTaNxyQBR5po1hM63sK83lK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2017-02-25 10:40:30", last_sign_in_at: "2017-02-25 10:38:07", current_sign_in_ip: "10.0.2.2", last_sign_in_ip: "10.0.2.2", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, provider: nil, uid: nil, username: "test01", thumbnails: nil, description: nil},
#   {email: "test02@test.jp", encrypted_password: "$2a$11$F7HcoibhOGQKUvRzy4dSZuxJ7k33QjuTaNxyQBR5po1hM63sK83lK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2017-02-25 10:40:30", last_sign_in_at: "2017-02-25 10:38:07", current_sign_in_ip: "10.0.2.2", last_sign_in_ip: "10.0.2.2", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, provider: nil, uid: nil, username: "test02", thumbnails: nil, description: nil},
#   {email: "test03@test.jp", encrypted_password: "$2a$11$F7HcoibhOGQKUvRzy4dSZuxJ7k33QjuTaNxyQBR5po1hM63sK83lK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2017-02-25 10:40:30", last_sign_in_at: "2017-02-25 10:38:07", current_sign_in_ip: "10.0.2.2", last_sign_in_ip: "10.0.2.2", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, provider: nil, uid: nil, username: "test03", thumbnails: nil, description: nil}
# ])
# Video.create!([
#   {url: "https://www.xvideos.com/video25018523/_a", title: "個人撮影 パイパンのむちむち彼女 A", description: "他のサイトより 規模が大きく て 質が良い ... ", website: "XVIDEOS.COM", user_id: 1, thumbnails: "https://img-egc.xvideos.com/videos/thumbs169ll/0e/72/eb/0e72ebb0b5bf4bff2c489c36f0310ae6/0e72ebb0b5bf4bff2c489c36f0310ae6.23.jpg"},
#   {url: "https://www.xvideos.com/video26464963/fuck_daughter_at_home_full_http_zo.ee_2mut", title: "fuck daughter at home full", description: "ああああああああああああぁ", website: "XVIDEOS.COM", user_id: 1, thumbnails: "https://img-hw.xvideos.com/videos/thumbs169ll/d8/f4/a5/d8f4a58f3b843cfe64863edabc114d2e/d8f4a58f3b843cfe64863edabc114d2e.22.jpg"}
# ])

100.times do |i|
  Video.create!(
    url: "https://www.xvideos.com/video25018523/_a",
    title: "タイトル#{i}",
    description: "他のサイトより 規模が大きく て 質が良い ... ",
    website: "XVIDEOS.COM",
    user_id: 1,
    thumbnails: "https://img-egc.xvideos.com/videos/thumbs169ll/0e/72/eb/0e72ebb0b5bf4bff2c489c36f0310ae6/0e72ebb0b5bf4bff2c489c36f0310ae6.23.jpg"
  )
end
100.times do |i|
  Video.create!(
    url: "https://flashservice.xvideos.com/embedframe/26070625",
    title: "タイトル2#{i}",
    description: "テストディスクリプション２",
    website: "XVIDEOS.COM",
    user_id: 2,
    thumbnails: "https://img-egc.xvideos.com/videos/thumbs169ll/0e/72/eb/0e72ebb0b5bf4bff2c489c36f0310ae6/0e72ebb0b5bf4bff2c489c36f0310ae6.23.jpg"
  )
end
100.times do |i|
  Video.create!(
    url: "https://flashservice.xvideos.com/embedframe/26854553",
    title: "タイトル3#{i}",
    description: "テストディスクリプション３",
    website: "XVIDEOS.COM",
    user_id: 3,
    thumbnails: "https://img-egc.xvideos.com/videos/thumbs169ll/0e/72/eb/0e72ebb0b5bf4bff2c489c36f0310ae6/0e72ebb0b5bf4bff2c489c36f0310ae6.23.jpg"
  )
end
