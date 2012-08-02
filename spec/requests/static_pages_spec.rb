require 'spec_helper'

describe "Static pages" do
	
  let(:base_title) { "RAMTEC PortalWeb" }

  describe "Pagina de Inicio" do
    
    it "should have the content 'RAMTEC'" do
      visit '/static_pages/home'
      page.should have_content('RAMTEC')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "#{base_title}")
    end
    
    it "should have the title 'Inicio'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => '| Inicio')
    end
  end
  
  describe "Pagina de Ayuda" do

    it "should have the content 'Ayuda'" do
      visit '/static_pages/help'
      page.should have_content('Ayuda')
    end
    
    it "should have the title 'Ayuda'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "#{base_title} | Ayuda")
    end
  end
  
  describe "Pagina de Acerca De" do

    it "should have the content 'Acerca De'" do
      visit '/static_pages/about'
      page.should have_content('Acerca De')
    end
    
    it "should have the title 'Acerca De'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "#{base_title} | Acerca De")
    end
  end
  
  describe "Pagina de Contacto" do
  	
  	it "should have the content 'Contacto'" do
      visit '/static_pages/contact'
      page.should have_content('Contacto')
    end
    
    it "should have the title 'Contacto'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "#{base_title} | Contacto")
    end    
  end
  
end