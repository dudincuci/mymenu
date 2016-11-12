json.extract! website, :id, :name, :domain, :name_servers, :online, :published_at, :created_at, :updated_at
json.url website_url(website, format: :json)