class FortunesController < ApplicationController
  def index
  end

  def create
    @fortune = Fortune.create(
      error_rate: [
        "０％！カンペキの予感…！",
        "低め！スムーズに進むね！",
        "普通！落ち着いて調査しよう！",
        "高め…！無理せず、息抜きも大事かも…",
        "爆発寸前！？！？一旦PCの電源落としましょうか！？！？"
      ].sample,
      bug_fortune: [
        "大吉！バグが起きない素敵な１日！", 
        "中吉！スラスラ書けるかも！",
        "小吉！今までの知識を思い出せば乗り越えられる…！", 
        "凶…バグと戦いましょう…", 
        "バグ地獄！…気分転換したほうが良いかも？"
      ].sample,
      commit_power: [
        "爆上がり！！草超えて草原超えて森が生まれる…！！",  
        "絶好調！どんどんcommitできる！",
        "まあまあ！たくさん草を生やせそう！",
        "微妙…。１つでもcommit出来たら上出来！",
        "枯れ枯れ…。明日はcommitできるはず…！"
      ].sample
    )

    redirect_to fortune_path(@fortune)
  end

  def show
    @fortune = Fortune.find(params[:id])  # URLのIDから結果を取得
  end
end
