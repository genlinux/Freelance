Given /^I have users name (.*)$/ do |names|
  names.split(',').each do |name|
    User.create(:username=>name)
  end
end
