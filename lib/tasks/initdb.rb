namespace :utils do
  desc "Initialise les Champs Sa et Staff"
  task :init => :environment do
    
      puts "Creating Sa..."
      Sa.create(:content => "Init",:active => true)
      puts "OK"
      puts "Creating Staff_Content..."
      Page.create(:staff => "Init")
      puts "OK"
    puts "Everything OK !"
  end
end