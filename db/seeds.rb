# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

JobType.all.destroy_all
JobTypeDetail.all.destroy_all
Area.all.destroy_all
Job.all.destroy_all
User.all.destroy_all


JobType.create(:name => '美容')
JobType.create(:name => 'リラクゼーション')
JobType.create(:name => '治療')
JobType.create(:name => 'スポーツ・フィットネス')


JobTypeDetail.create(:name => 'エステ', :job_type_id => 1)
JobTypeDetail.create(:name => 'ネイリスト', :job_type_id => 1)
JobTypeDetail.create(:name => 'アイリスト', :job_type_id => 1)
JobTypeDetail.create(:name => '美容師・理容師', :job_type_id => 1)
JobTypeDetail.create(:name => '美容部員', :job_type_id => 1)
JobTypeDetail.create(:name => 'セラピスト',:job_type_id => 2)
JobTypeDetail.create(:name => 'アロマ', :job_type_id => 2)
JobTypeDetail.create(:name => 'マッサージ', :job_type_id => 2)
JobTypeDetail.create(:name => 'リフレクソロジー', :job_type_id => 2)
JobTypeDetail.create(:name => '整体師', :job_type_id => 2)
JobTypeDetail.create(:name => 'カイロ', :job_type_id => 2)
JobTypeDetail.create(:name => '柔道整復師', :job_type_id => 3)
JobTypeDetail.create(:name => '鍼灸師', :job_type_id => 3)
JobTypeDetail.create(:name => 'あん摩マッサージ指圧師', :job_type_id => 3)
JobTypeDetail.create(:name => 'ヨガ', :job_type_id => 4)
JobTypeDetail.create(:name => 'フィットネス', :job_type_id => 4)

Area.create(:name => '北海道')
Area.create(:name => '青森県')
Area.create(:name => '岩手県')
Area.create(:name => '宮城県')
Area.create(:name => '秋田県')
Area.create(:name => '山形県')
Area.create(:name => '福島県')
Area.create(:name => '茨城県')
Area.create(:name => '栃木県')
Area.create(:name => '群馬県')
Area.create(:name => '埼玉県')
Area.create(:name => '千葉県')
Area.create(:name => '東京都')
Area.create(:name => '神奈川県')
Area.create(:name => '新潟県')
Area.create(:name => '富山県')
Area.create(:name => '石川県')
Area.create(:name => '福井県')
Area.create(:name => '山梨県')
Area.create(:name => '長野県')
Area.create(:name => '岐阜県')
Area.create(:name => '静岡県')
Area.create(:name => '愛知県')
Area.create(:name => '三重県')
Area.create(:name => '滋賀県')
Area.create(:name => '京都府')
Area.create(:name => '大阪府')
Area.create(:name => '兵庫県')
Area.create(:name => '奈良県')
Area.create(:name => '和歌山県')
Area.create(:name => '鳥取県')
Area.create(:name => '島根県')
Area.create(:name => '岡山県')
Area.create(:name => '広島県')
Area.create(:name => '山口県')
Area.create(:name => '徳島県')
Area.create(:name => '香川県')
Area.create(:name => '愛媛県')
Area.create(:name => '高知県')
Area.create(:name => '福岡県')
Area.create(:name => '佐賀県')
Area.create(:name => '長崎県')
Area.create(:name => '熊本県')
Area.create(:name => '大分県')
Area.create(:name => '宮崎県')
Area.create(:name => '鹿児島県')
Area.create(:name => '沖縄県')

Job.create(:title => '南フランスの美容室☆楽しくて安心です☆',:job_type_id =>1 , :job_type_detail_id => 4, :detail => 'このお店の夢・想い
お客様満足度はスタッフさんの働きやすさに比例していると思います
当店が1番大切にしているところです
このお店のこだわり/自慢
キャリアプラン
女性は結婚しても 希望の時間働けるようにさせて頂いています
男性は家族ができても幸せになるように提案しています
特に住宅ローンがおりるようにご提案しています
価値観
ラクヘアーはお客様がラクになって頂けるよう
ハンドマッサージサービスやマッサージチェアをご用意。
ゆったりを提供しているのでスタッフさんもゆっくりした気持ちが大事と思っています
お客様をたらい回しするようなサロンではないので
美容ライフが楽しめます', :area_id => 1)

# Job.create(:title => '☆未経験大歓迎!オープニングスタッフ大募集☆')



Job.create(:title => '月10休み!6連休も出来る!有給消化率100%!未経験OK', :job_type_id =>1 ,:job_type_detail_id => 1,
:detail =>'上質な癒しの空間で最高クラスの美容マシンで結果の出るトリートメントを各種取り揃えております。',:area_id => 27)

Job.create(:title => '訪問マッサージ師】大募集！国家の方針『施設から在宅』に伴い、成長分野です。鍼灸治療もあります。勤続1年以上の平均月給:30万/充実した研修制度が魅力です！',
 :job_type_id =>3 ,:job_type_detail_id => 3, :detail =>'「ありがとう」と言える心を大切にし、 皆様から「ありがとう」と言われる企業として成長し続けます。 ◎充実した研修制度 入社から最大3ヶ月の研修制度があり、 実務経験のない方でも安心して働く事ができます。 施術者として、しっかりとした技術が修得でき、 貴方の将来に役立つ技術が身につきます。 ※定期的に外部講師との勉強会も開催しています。 ◎社宅制度(Iターン・Uターン・Jターン歓迎) 独身者・単身赴任者・赴任者ごとに社宅の制度を設けております。',
 :area_id => 3)
Job.create(:title => '質の高いパーソナルトレーニングジムで働きたい方は他にいませんか？',:job_type_id => 4, :job_type_detail_id => 16, :detail =>'弊社は抜擢主義です。 そして急拡大の為ポジションが数多く余っています。 ですからやる気のある方はすぐにステップアップしていきます。 店長→エリアマネージャー→エリアマネージャー統括などなど、キャリアプランは数多く用意されています。 この時期の入社はあなたにとってもチャンスとなるはずです！',:area_id => 1)
Job.create(:title => 'オープニングスタッフ募集！梅田ハービスエント店！マネージャー候補同時募集！',:job_type_id => 1, :job_type_detail_id =>1 , :detail =>'有名人気雑誌から取材依頼も多く、業界関係者からも高い評価を頂いています。また口コミサイトランキングも2010年より連続入賞しております。 ブライダルエステにも力を入れており、多くの花嫁様からの喜びの声がモチベーションにつながっています。 ご新規様の多くは、会員様からのご紹介でご来店されており、人から人へ、口コミでつながっているお店です。 「頑張る女性の応援サロン」として、確かな技術と誠意を持って、お1人お1人を大切に施術していただける方を募集しております。',:area_id => 6)
Job.create(:title => '認定講師在籍!通勤に便利な駅チカ!経験を活かせるサロンです。',:job_type_id => 1, :job_type_detail_id => 1,
 :detail =>'お客様にとっても、スタッフにとっても居心地の良いお店を目指しています。 ケアはもちろんジェル・スカルプの最新デザインまで 地域のお客様のニーズに幅広く対応できるよう、心掛けています。 確かな技術と丁寧な接客で、一人ひとりのお客様を大切にしています。 特にケアの技術向上には力を入れており、爪の健やかな成長を促すため ジェル前は必ずウォーターケアを行っています。 ◇北千住駅から徒歩2分、エリアで人気のお店です',:area_id => 2)
Job.create(:title => '【経験・資格不問！】あなたの手で綺麗を演出しませんか♪',:job_type_id => 1, :job_type_detail_id => 2,
 :detail =>'全くの未経験でも正社員(月給21万円)から勤務できます! ☆★☆説明会参加者には割引クーポン券プレゼント☆★☆ .。○。・.○。・.○。・.○。・.○。・.○。・.○。・.○。 〜For happiness,for richness〜　 「幸せと豊かさを創造する」をコンセプトに、 お客様はもちろん全従業員にも、 ネイリストとして輝いてお仕事して頂くための、 やりがいと安心を支える制度を整えています。',:area_id => 3)
Job.create(:title => '【社保完備】未経でも安心の充実研修☆プライベートも充実♪', :job_type_id => 1,:job_type_detail_id => 3, :detail =>'★☆アイリスト大募集☆★ 未経験の方もご安心ください!技術は1からお教え致します。 研修や空き時間を利用しスタッフ同士で施術などもするので技術が身に付き、スタッフの仲もどんどん良くなります。 十分な研修を重ね、確かな技術が身に付いてからデビューしていただきます! モデルさんへの施術など、実践的な内容が中心の研修なのでアイリストとして高い技術を身に付け、丁寧な施術を行えます。 経験者の方は今まで培ってきた技術を発揮してください。 ',:area_id => 4)
Job.create(:title => 'やっぱり『手に職』ですよね!!　☆未経験から癒しのプロに☆', :job_type_id => 2,:job_type_detail_id => 6,
 :detail =>'*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* 16年の信頼と実績【　これぞプロの技!!!　】 名古屋・大阪で大人気♪ 全国展開計画中サロン☆★ リラクゼーションの音楽が流れる明るい雰囲気の中で しっかりと技術を身につけて、たくさんのお客様を癒しませんか? -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* ',:area_id => 5)
Job.create(:title => '朝6時までの営業で深夜働きたい方もダブルワークも大歓迎です。', :job_type_id => 2,:job_type_detail_id => 7,
 :detail =>'周りにビジネスホテルが多いため夜中でも安定してお客さんが来ます。 週末は特にお客様が集まります。',:area_id => 7)
Job.create(:title => '心と体を健康にする【OMG Partners】がグループ3社合同募集!!', :job_type_id => 2,:job_type_detail_id => 8,
 :detail =>'□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■ 　 心と体を健康にするOMG Partnersがグループ3社合同募集!! 　　　　一緒に業界を盛り上げていきませんか? □■□■□■□■□■□■□■□■□■□■□■□■□■□■□■ OMG Partners は、整骨院・鍼灸院の「げんき堂」をはじめ、「リラクゼーションサロンRELAX」、介護予防デイサービス「GENKI NEXT」を全国に展開しています。',:area_id => 8)
Job.create(:title => '【2~3年後に独立開業を目指している方へ】整骨院業界で成功する方法を伝授します！', :job_type_id => 3,:job_type_detail_id => 12,
 :detail =>'一緒に頑張ってくれる仲間大募集してます！',:area_id => 9)
Job.create(:title => '鍼灸師求ム！！', :job_type_id => 3,:job_type_detail_id => 13,
 :detail =>'全国から募集中！2～3年後に独立開業を目指している方へ】 ☆転居費用補助・住宅手当あり☆ ◎開業の為の経営ノウハウ・技術・知識・資金全てが得られる魅力的な環境をご用意！ ◎あなたの独立開業の夢をげんき堂は応援します！ 私たち「げんき堂」では独立を目指す皆さんを大募集致します。 他では受けられない！グループ代表（整骨院経営100店舗、グループ350店舗運営の代表）の直接指導もあり！ 開業までのノウハウをしっかりと身につけることが出来ます! ',:area_id => 10)
Job.create(:title => '新規オープンにつき、新しい仲間募集中★', :job_type_id => 3,:job_type_detail_id => 13,
 :detail =>'全国60店舗展開★ グループ全体で200名のスタッフが活躍している治療院の仙台中央店です。 ・‥…━━━☆・‥…━━━☆・‥…━━━☆・‥…━━━☆ はじめまして! 『からだ元気治療院』は、国家資格取得者がご高齢者や身体障害がい者のご自宅や施設にお伺いして、リハビリ・機能訓練・鍼・お灸・マッサージなどの施術ををする治療院です。 企業理念は、 「笑顔と真心で小さな感動を積み重ねよ。',:area_id => 11)
Job.create(:title => '其々に応じたキャリアプラン、キミのなりたい未来がココにある!', :job_type_id => 4,:job_type_detail_id => 12,
 :detail =>'■将来を見据えた自分だけのキャリアアッププラン 柔整師・鍼灸師共に独立開業が目標の方、スペシャリストとして企業で業界発展に尽力したい方、夢は様々有ります。私達は一人一人に合ったキャリアアッププランで、現状把握から課題を見出し、今何をすべきなのか?というアクションプランまでを計画・実行しています。',:area_id => 12)
Job.create(:title => '「往診」「介護」資格を活かして幅広く勤務ができる鍼灸整骨院', :job_type_id => 4,:job_type_detail_id => 15,
 :detail =>'医療・介護またヨガやフィットネスなど知識、経営の知識も増やせます。 治療に関する勉強会があれば、積極的に行ってもらってます。 また、柔整・鍼灸・あんまそれぞれのスペシャリストがいるので、治療家として幅広い知識や経験が積めます。 当院でずっと勤めてもらうのも大歓迎。もちろん「将来は独立」と考えているなら、現在は経営に専念している院長が経営、運営のことを何でもお教えします。 自分のやりたいことを、自分らしく頑張れる環境を整えていますよ。',:area_id => 6)
Job.create(:title => '【急募!!】未経験者大歓迎!の女性専用ボディメイクジムです!', :job_type_id => 4,:job_type_detail_id => 16,
 :detail =>'【　一緒にキレイに★ボディメイクのパートナー　】 Shapesのパーソナルトレーナーは、お客様一人一人に対し丁寧なカウンセリングを行い、お客様の目指す理想のボディメイクのため、食事からエクササイズまでマンツーマンで徹底サポートしていきます。 ヘアサロンやネイルサロンのように、お客様に対して一方的に施術するのではなく、お客様と一緒に「美しさ」「キレイ」を目指すのがボディメイクジムです。',:area_id => 6)

User.create(name: 'あかね', password: 'aaa', email: 'a@gmail.com')
