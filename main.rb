require "./methods.rb"

plans = [
　{ place: "沖縄", price: 10000 },
　{ place: "北海道", price: 20000 },
　{ place: "九州", price: 15000 }
]

desp_plan(plans)
chosen_plan = choose_plan(plans)
count_people = decide_count(chosen_plan)
calculate_total_price(chosen_plan, count_people)