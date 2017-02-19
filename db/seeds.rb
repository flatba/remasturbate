# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "user1" ,email: "user@test.com", encrypted_password: "$2a$11$lqxp/uUOkflGq.dpj6HChe7804e4RSVm1iYz5fTYCI3Ji7gTjuuwa")
User.create(username: "user2" ,email: "user2@test.com", encrypted_password: "$2a$11$lqxp/uUOkflGq.dpj6HChe7804e4RSVm1iYz5fTYCI3Ji7gTjuuwa")

Video.create(thumbnails: "https://img-hw.xvideos.com/videos/thumbs169ll/ad/e1/44/ade144854ec8c27fcfb347e93d13a387/ade144854ec8c27fcfb347e93d13a387.16.jpg",url: "xvideos.com", title: "エロイタイトル", description: "エロイ説明", website: "xvideos", user_id: 1)
Tag.create(tag: "巨乳")
Tag.create(tag: "女子高生")
Tag.create(tag: "人妻")
User.first.video_likes.first.video.video_tag.create(tag_id: 1, video_id:1)
User.first.video_likes.first.video.video_tag.create(tag_id: 2, video_id:1)
User.first.video_likes.new(:video_id => 1).save
User.first.curations.create(title: "【常時更新】低身長が好き！ロリ動画まとめ厳選リスト", description: "笑顔でフェ ラをして、自分から素股、クンニされながらクリを触り、自ら入れた後は腰を動かしまくり最後は中出し。中出しされた後に溢れてるとこがかな りエロい")
User.first.curations.first.curation_videos.create(video_id: 1)
User.first.curation_likes.create(:curation_id => 1)
User.first.curations.first.curation_tags.create(tag_id: 1, curation_id:1)
Relationship.create(follower_id: 2, following_id:1)

