# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Medium.create(
  [ { name:        'Arc Times',
      furigana:    'あーくたいむず',
      website_url: 'https://www.youtube.com/@ArcTimes1' },
    { name:        '一月万冊',
      furigana:    'ひとつきまんさつ',
      website_url: 'https://www.youtube.com/@yukoreadman' },
    { name:        '日経ビジネス',
      furigana:    'にっけいびじねす',
      website_url: 'https://business.nikkei.com' },
    { name:        '東洋経済',
      furigana:    'とうようけいざい',
      website_url: 'https://toyokeizai.net' },
    { name:        '週刊文春',
      furigana:    'しゅうかんぶんしゅん',
      website_url: 'https://bunshun.jp/list/magazine/shukan-bunshun' },
    { name:        'FLASH',
      furigana:    'ふらっしゅ',
      website_url: 'https://smart-flash.jp' },
    { name:        'FRIDAY',
      furigana:    'ふらいでー',
      website_url: 'https://friday.kodansha.co.jp' },
    { name:        '読売新聞',
      furigana:    'よみうりしんぶん',
      website_url: 'https://www.yomiuri.co.jp' },
    { name:        '朝日新聞',
      furigana:    'あさひしんぶん',
      website_url: 'https://www.asahi.com' },
    { name:        '毎日新聞',
      furigana:    'まいにちしんぶん',
      website_url: 'https://mainichi.jp' },
    { name:        '産経新聞',
      furigana:    'さんけいしんぶん',
      website_url: 'https://www.sankei.com' },
    { name:        '日本経済新聞',
      furigana:    'にほんけいざいしんぶん',
      website_url: 'https://www.nikkei.com' },
    { name:        '中日新聞',
      furigana:    'ちゅうにちしんぶん',
      website_url: 'https://www.chunichi.co.jp' },
    { name:        '日刊スポーツ',
      furigana:    'にっかんすぽーつ',
      website_url: 'https://www.nikkansports.com' },
    { name:        'スポーツニッポン',
      furigana:    'すぽーつにっぽん',
      website_url: 'https://www.sponichi.co.jp' },
    { name:        'サンケイスポーツ',
      furigana:    'さんけいすぽーつ',
      website_url: 'https://www.sanspo.com' },
    { name:        'スポーツ報知',
      furigana:    'すぽーつほうち',
      website_url: 'https://hochi.news' },
    { name:        '中日スポーツ',
      furigana:    'ちゅうにちすぽーつ',
      website_url: 'https://www.chunichi.co.jp/chuspo' },
    { name:        'デイリースポーツ',
      furigana:    'でいりーすぽーつ',
      website_url: 'https://www.daily.co.jp' },
    { name:        '夕刊フジ',
      furigana:    'ゆうかんふじ',
      website_url: 'https://www.zakzak.co.jp' },
    { name:        '日刊ゲンダイ',
      furigana:    'にっかんげんだい',
      website_url: 'https://www.nikkan-gendai.com' },
    { name:        '東京スポーツ',
      furigana:    'とうきょうすぽーつ',
      website_url: 'https://www.tokyo-sports.co.jp' },
    { name:        'NHK',
      furigana:    'えぬえいちけい',
      website_url: 'https://www.nhk.or.jp' },
    { name:        '日本テレビ',
      furigana:    'にほんてれび',
      website_url: 'https://www.ntv.co.jp' },
    { name:        'テレビ朝日',
      furigana:    'てれびあさひ',
      website_url: 'https://www.tv-asahi.co.jp' },
    { name:        'TBS',
      furigana:    'てぃーびーえす',
      website_url: 'https://www.tbs.co.jp' },
    { name:        'フジテレビ',
      furigana:    'ふじてれび',
      website_url: 'https://www.fujitv.co.jp' },
    { name:        'テレビ東京',
      furigana:    'てれびとうきょう',
      website_url: 'https://www.tv-tokyo.co.jp' },
    { name:        '読売テレビ',
      furigana:    'よみうりてれび',
      website_url: 'https://www.ytv.co.jp' },
    { name:        'BBC',
      furigana:    'びーびーしー',
      website_url: 'https://www.bbc.com/japanese' },
    { name:        '共同通信',
      furigana:    'きょうどうつうしん',
      website_url: 'https://www.kyodo.co.jp' },
    { name:        '時事通信',
      furigana:    'じじつうしん',
      website_url: 'https://www.jiji.com' },
    { name:        'ロイター通信',
      furigana:    'ろいたーつうしん',
      website_url: 'https://jp.reuters.com' },
    { name:        'ニューヨーク・タイムズ',
      furigana:    'にゅーよーく たいむず',
      website_url: 'https://www.nytimes.com' }
  ]
)

PORTRAITS_PATH = Rails.root.join('db', 'seeds')

def attach_image(reporter_name, file_name)
  reporter = Reporter.find_by(name: reporter_name)
  reporter.portrait.attach(io: File.open(PORTRAITS_PATH.join(file_name)),
                           filename: file_name,
                           content_type: 'image/jpg')
end

Medium.find_by(name: 'Arc Times').reporters.create(
  [
    { name:         '尾形 聡彦',
      furigana:     'おがた としひこ',
      independent:  false,
      desirability: :not_at_all,
      portrait_source: 'https://arctimes.com/from-founder/' },
    { name:         '望月 衣塑子',
      furigana:     'もちづき いそこ',
      independent:  false,
      desirability: :not_at_all,
      portrait_source: 'https://www.tokyo-np.co.jp/tags_reporter/m1/motizk_i' }
  ]
)
attach_image('尾形 聡彦',   '尾形聡彦.jpg')
attach_image('望月 衣塑子', '望月衣塑子.jpg')

Medium.find_by(name: '一月万冊').reporters.create(
  [
    { name:         '本間 龍',
      furigana:     'ほんま りゅう',
      independent:  false,
      desirability: :not_at_all,
      portrait_source: 'https://www.amazon.co.jp/%E6%9C%AC%E9%96%93-%E9%BE%8D/e/B004LW6PX4' },
    { name:         '佐藤 章',
      furigana:     'さとう あきら',
      independent:  false,
      desirability: :not_at_all,
      portrait_source: 'https://twitter.com/bSM2TC2coIKWrlM' }
  ]
)
attach_image('本間 龍', '本間龍.jpg')
attach_image('佐藤 章', '佐藤章.jpg')

Reporter.create(
  [
    { name:         '松谷 創一郎',
      furigana:     'まつたに そういちろう',
      independent:  true,
      desirability: :not_at_all,
      portrait_source: 'https://life.www.tbsradio.jp/2014/01/02/index.html',
      portrait_copyright: '会田邦秋' },
    { name:         '鈴木 エイト',
      furigana:     'すずき えいと',
      independent:  true,
      desirability: :not_at_all,
      portrait_source: 'https://jisin.jp/domestic/2250493/',
      portrait_copyright: '時事通信' },
    { name:         '駒井 千佳子',
      furigana:     'こまい ちかこ',
      independent:  true,
      desirability: :highly,
      portrait_source: 'https://www.nikkan-gendai.com/articles/view/geino/277753',
      portrait_copyright: '日刊ゲンダイ' }
  ]
)
attach_image('松谷 創一郎', '松谷創一郎.jpg')
attach_image('鈴木 エイト', '鈴木エイト.jpg')
attach_image('駒井 千佳子', '駒井千佳子.jpg')

Medium.find_by(name: 'TBS').reporters.create(
  [
    { name:         '藤森 祥平',
      furigana:     'ふじもり しょうへい',
      independent:  false,
      desirability: :highly,
      portrait_source: 'https://www.huffingtonpost.jp/entry/story_jp_651f8ae3e4b076f0bd0ed59e',
      portrait_copyright: 'TBS'}
  ]
)
attach_image('藤森 祥平', '藤森祥平.jpg')

Medium.find_by(name: '東洋経済').reporters.create(
  [
    { name:         '山田',
      furigana:     'やまだ',
      independent:  false,
      desirability: :somewhat }
  ]
)
