require 'spec_helper'

describe "Static pages" do
  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector('h1',    text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end
	
  describe "Pagina de Inicio" do
  	before { visit root_path }
  	
  	let(:heading)    { 'Bienvenido a RAMTEC' }
    let(:page_title) { '' }
    
    it_should_behave_like "all static pages"
    it { should_not have_selector 'title', text: '| Home' }
  end
  
  describe "Pagina de Ayuda" do
    before { visit help_path }
    
    let(:heading)    { 'Ayuda' }
    let(:page_title) { 'Ayuda' }
    
    it_should_behave_like "all static pages"
  end
  
  describe "Pagina de Acerca De" do
    before { visit about_path }
    
    let(:heading)    { 'Acerca De' }
    let(:page_title) { 'Acerca De' }
    
    it_should_behave_like "all static pages"
  end
  
  describe "Pagina de Contacto" do
  	before {visit contact_path}
  	
  	let(:heading)    { 'Contacto' }
    let(:page_title) { 'Contacto' }
    
    it_should_behave_like "all static pages"
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "Acerca De"
    page.should have_selector 'title', text: full_title('Acerca De')
    click_link "Ayuda"
    page.should # fill in
    click_link "Contacto"
    page.should # fill in
    click_link "Inicio"
    click_link "Registrarse ahora!"
    page.should # fill in
    click_link "RAMTEC"
    page.should # fill in
  end
  
end