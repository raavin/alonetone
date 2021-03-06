xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.rss "xmlns:itunes"=> "http://www.itunes.com/dtds/podcast-1.0.dtd", "version"=>"2.0" do
  xml.channel do 
    xml.title  "Latest uploaded mp3s from artists at #{ALONETONE.url}"
    
    xml.link  "http://#{ALONETONE.url}/"
    xml.description  "The artists on #{ALONETONE.url} give away their music. Listen to the lastest by subscribing"
    xml.language  "en-us"
    xml.lastBuildDate  rss_date @assets.first.created_at
    
    xml.image do
      xml.url  "http://#{ALONETONE.url}/images/no-cover-200.jpg"
      xml.title  "Latest uploaded mp3s from artists at #{ALONETONE.url}"
      xml.width 200
      xml.height 200
    end
    
    
    xml.itunes :author, 	'alonetone'
		xml.itunes :subtitle, 'a damn fine home for musicians'
		xml.itunes :summary, 	'Latest uploaded mp3s from artists at alonetone.com'
		xml.itunes :keywords, 'independant free alonetone musician artist latest upcoming'
		xml.itunes :explicit, 'clean' 
		xml.itunes :image, :href=>'http://www.alonetone.com/images/no-cover-200.jpg'
		
		xml.itunes :owner do
			xml.itunes :name, 'alonetone'
			xml.itunes:email,	'sudara@alonetone.com'
		end
		
		xml.itunes :category,:text=>'Music' 
    
    xml.<< render(:partial => 'shared/asset', :collection => @assets)
  end
end