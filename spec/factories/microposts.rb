FactoryBot.define do
  factory :micropost do
    content { "test" }
    address { "神奈川県横浜市" }
    rate { "普通" }
    picture { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/yuigahama.jpg')) }
    association :user
  end
end