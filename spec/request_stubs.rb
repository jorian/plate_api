RSpec.configure do |config|
  config.before(:each) do
    stub_request(:any, "https://www.startwithplate.com/api/v2/sites/12/posts").
       to_return(status: 200, body: {data: "Fake data"}.to_json, headers: {})

    stub_request(:any, "https://www.startwithplate.com/api/v2/sites/12/posts?aparam=early&param1=123").
       to_return(status: 200, body: {data: "Fake data"}.to_json, headers: {})

    stub_request(:any, "http://www.custom-server.plate/sites/12/posts").
       to_return(status: 200, body: {data: "Fake data"}.to_json, headers: {})

    stub_request(:post, "https://www.startwithplate.com/api/v2/sites/12/attachments").
       to_return(status: 200, body: {data: "Fake data"}.to_json, headers: {})
  end
end
