namespace :db do
  desc "Add users/players to database"
  task :populate => :environment do
    require "populator"
    require "faker"

    [User, AdminUser].each(&:delete_all)

    User.populate(20) do |user|
      user.full_name = Faker::Name.name
      user.first_name = Faker::Name.first_name
      user.last_name = Faker::Name.last_name
      user.email = Faker::Internet.email
      user.city = Faker::Address.city
      user.state = Faker::Address.state
      user.zip = Faker::Address.zip
      user.phone = Faker::PhoneNumber.phone_number
      user.birthdate = Faker::Date.between(100.days.ago, Date.today)
      user.age_group = [18, 30, 40]
      user.primary_position = ['pitcher', 'catcher', 'first', 'second', 'third', 'shortstop', 'outfield']
      user.secondary_position = ['pitcher', 'catcher', 'first', 'second', 'third', 'shortstop', 'outfield']
      user.bats = ['right', 'left', 'switch']
      user.throws = ['right', 'left', 'switch']
      user.playing_experience = Populator.sentences(1..4)
      user.last_played = ['1 year ago', '2 years ago', '3 years ago', '4 years ago', '5 or more years ago']
      user.created_at = 2.years.ago..Time.now
      user.updated_at = 2.years.ago..Time.now

      user.current_sign_in_at = Faker::Time.between(10.days.ago, Time.now)
      user.last_sign_in_at = Faker::Time.between(10.days.ago, Time.now)
      user.current_sign_in_ip = Faker::Internet.ip_v4_address
      user.last_sign_in_ip = Faker::Internet.ip_v4_address
      user.encrypted_password = Faker::Internet.password
      user.sign_in_count = "2"
    end
  end
end
