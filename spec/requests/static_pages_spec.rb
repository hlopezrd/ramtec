require 'spec_helper'

describe "Static pages" do
  subject { page }
	
  describe "Pagina de Inicio" do
  	before { visit root_path }
    
    it { should have_selector('h1', text: 'RAMTEC') }
    it { should have_selector('title', text: full_title('')) }
    it { should have_selector('title', text: full_title('Inicio')) }
  end
  
  describe "Pagina de Ayuda" do
    before { visit help_path }
    
    it { should have_selector('h1', text: 'Ayuda') }
    it { should have_selector('title', text: full_title('Ayuda')) }
  end
  
  describe "Pagina de Acerca De" do
    before { visit about_path }
    
    it { should have_selector('h1', text: 'Acerca De') }
    it { should have_selector('title', text: full_title('Acerca De')) }
  end
  
  describe "Pagina de Contacto" do
  	before {visit contact_path}
  	
  	it { should have_selector('h1', text: 'Contacto') }
    it { should have_selector('title', text: full_title('Contacto')) }
  end
  
end