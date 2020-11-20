Given("Login and go menu sales") do
    visit('/')
    find(:xpath, "//input[@id='user_email']").fill_in with: 'abizargiffari80@gmail.com'
    find(:xpath, "//input[@id='user_password']").fill_in with: 'A123456b'
    find(:xpath, "//input[@id='new-signin-button']").click
  end
  
  Then("Menu sales") do
    page.should have_xpath("//span[contains(text(),'Sales')]")
  end
  
  When("Making sales invoice") do
    find(:xpath, "//a[@id='vnav-sales-link']").click
    find(:xpath, "//span[contains(text(),'Create New Sale')]").click
    find(:xpath, "//header/div[1]/div[2]/div[1]/div[1]/ul[1]/li[1]/a[1]").click
    find(:xpath, "//span[@id='select2-chosen-19']").click
    find(:xpath, "//div[@id='select2-result-label-0']").click
    #note = please change Abi testN+1 after running 1 time
    #example Abi test24, Abi test25
    #because once it run, Abi test24 will be already saved and program cant run properly
    find(:xpath, "//input[@id='person_display_name']").fill_in with: 'Abi test24'
    find(:xpath, "//button[@id='aodc-add']").click
    sleep 3
    find(:xpath, "//input[@id='transaction_transaction_date']").fill_in with: '01/11/2020'
    find(:xpath, "//span[@id='select2-chosen-20']").click
    find(:xpath, "//div[@id='select2-result-label-0']").click
    #note = please change MotorN+1 after running 1 time
    #example 'Motor24' then run, 'Motor25' then run
    #because once it run, 'Motor24' will be already saved and program cant run properly
    find(:xpath, "//input[@id='product_name']").fill_in with: 'Motor24'
    find(:xpath, "//button[@id='add-new-product']").click
    sleep 3
    find(:xpath, "//input[@id='transaction_transaction_lines_attributes_0_rate']").fill_in with: '100000'
    find(:xpath, "//input[@id='transaction_transaction_lines_attributes_0_rate']").send_keys :tab
    find(:xpath, "//input[@id='create_button']").click
  end
  
  
Then("Sales invoice success") do
  page.should have_css('div.flash-message.alert.alert-success')
  #up untill this i honestly dont know why invoice didn't create succesfully 
end