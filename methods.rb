def desp_plan(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(#{plan[:price]}円)"
  end
end

def choose_plan(plans)
  while true
    print "プランの番号を選択 > "
    select_num_plan = gets.to_i
    break if (1..3).include?(select_num_plan)
    puts "1〜3の番号を入力して下さい。"
  end
  plans[select_num_plan - 1]
end

def decide_count(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。"
  puts "何名で予約されますか？"
  while true
    print "人数を入力 > "
    count_people = gets.to_i
    break if count_people >= 1
    puts "1以上を入力して下さい。"
  end
  count_people
end

def calculate_total_price(chosen_plan, count_people)
  puts "#{count_people}名ですね。"
  total_price = chosen_plan[:price] * count_people
  if count_people >= 5
    total_price *= 0.9
    puts "5名以上なので10％割引となります"
  end
  puts "合計金額は#{total_price.floor}円になります。"
end