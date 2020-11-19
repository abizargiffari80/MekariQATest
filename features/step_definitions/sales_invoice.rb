Given("Login and go menu sales") do
    visit('/')
    find(:xpath, "//input[@id='user_email']").fill_in with: 'abizargiffari80@gmail.com'
    find(:xpath, "//input[@id='user_password']").fill_in with: 'A123456b'
    find(:xpath, "//input[@id='new-signin-button']").click
  end
  
  Then("Menu sales") do
    page.should have_xpath("//span[contains(text(),'Sales')]")
    find(:xpath, "//a[@id='vnav-sales-link']").click
    find(:xpath, "//span[contains(text(),'Create New Sale')]").click
    sleep 3
    find(:xpath, "//header/div[1]/div[2]/div[1]/div[1]/ul[1]/li[1]/a[1]").click
    sleep 3
  end
  
  When("Making sales invoice") do
    
  end
  
  Then("Sales invoice success") do
    
  end

  # upload file
  # attach_file('in put[type='file']', File.absolute_path('./fileset/publisher/upload_pic.jpg'))
  # find(:xpath, "input[type='file']").send_keys (lokasi file)