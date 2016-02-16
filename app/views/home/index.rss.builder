
xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Uragiranai-Fansub"
    xml.description "Site Web de la Uragiranai-Fansub"
    xml.link("http://www.uragiranai-fansub.tk/")

    for news in @news
      xml.item do
        xml.title news.title.force_encoding("UTF-8")
        xml.content news.content.gsub!(/(<[^>]*>)/, "").force_encoding("UTF-8")
        xml.pubDate news.created_at.to_s(:rfc822)
        xml.link news_url(news)
        xml.guid news_url(news)
      end
    end
  end
end
