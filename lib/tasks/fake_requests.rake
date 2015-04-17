namespace :fake_requests do
  desc "fake 10 requests all data filled in"
  task :fill10 => :environment do
    10.times do

      Request.create( name: ["winnie", "jason", "cal", "tyler"].sample,
                      email: "whatever@cc.ca",
                      dept_id: [1, 2, 3].sample,
                      msg: Faker::Lorem.sentence(5),
                      done: [true, false].sample
                    )
      # puts body
                      
      # r = Request.create( body )
      # r.valid?
      # raise r.errors.full_messages.inspect
    end
  end

end
