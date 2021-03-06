require 'test_helper'

class ContainerStepsTest < ActionDispatch::IntegrationTest
  test 'shows a link to a new compute resource if none is available'  do
    visit new_container_path
    assert has_selector?("div.alert", :text => 'Please add a new one')
  end

  # test 'clicking on search loads images' do
  #   Capybara.javascript_driver = :webkit
  #   container = FactoryGirl.create(:container)
  #   visit container_step_path(:container_id => container.id, :id => :image)
  #   ComputeResource.any_instance.expects(:search).returns([{ 'name' => 'my_fake_image_result',
  #                                                             'star_count' => 300,
  #                                                             'description' => 'fake image'}])
  #   click_button 'search_image'
  #   assert has_link? 'my_fake_image_result'
  # end
end
