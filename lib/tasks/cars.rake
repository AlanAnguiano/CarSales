namespace :cars do
  desc 'It depreciates the price of the cars by 2%'
  task depreciate_price: :environment do
    today = Time.now.utc.strftime("%Y-%m-%d")
    Car.all.each do |car|
      car_ingresed_day = car.created_at.strftime("%Y-%m-%d")
      if (today.to_date - car_ingresed_day.to_date).to_i > 30
        new_price = car.price - (car.price * 0.02)
        car.update(price: new_price)
        car.save
      end
    end
  end
end
