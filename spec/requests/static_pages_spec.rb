require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    
    it "should have the content 'RAMTEC'" do
      visit '/static_pages/home'
      page.should have_content('RAMTEC')
    end
    
    it "should have the title 'Inicio'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "RAMTEC PortalWeb | Inicio")
    end
  end
  
  describe "Help page" do

    it "should have the content 'Ayuda'" do
      visit '/static_pages/help'
      page.should have_content('Ayuda')
    end
    
    it "should have the title 'Ayuda'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "RAMTEC PortalWeb | Ayuda")
    end
  end
  
  describe "About page" do

    it "should have the content 'Acerca De'" do
      visit '/static_pages/about'
      page.should have_content('Acerca De')
    end
    
    it "should have the title 'Acerca De'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "RAMTEC PortalWeb | Acerca De")
    end
  end
  
end