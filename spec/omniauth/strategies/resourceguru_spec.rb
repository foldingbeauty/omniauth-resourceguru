require 'spec_helper'

describe OmniAuth::Strategies::ResourceGuru do
  let(:access_token) { stub('AccessToken', :options => {}) }
  let(:parsed_response) { stub('ParsedResponse') }
  let(:response) { stub('Response', :parsed => parsed_response) }


  subject do
    OmniAuth::Strategies::ResourceGuru.new({})
  end

  before(:each) do
    subject.stub(:access_token).and_return(access_token)
  end

  context "client options" do
    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://api.resourceguruapp.com/v1")
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://api.resourceguruapp.com/oauth/authorize')
    end

    it 'should have correct token url' do
      subject.options.client_options.token_url.should eq('https://api.resourceguruapp.com/oauth/access_token')
    end
  end


  context "#accounts" do
    it "should respond" do
       access_token.should_receive(:get).with('accounts').and_return(response)
       subject.accounts.should eq(parsed_response)
    end
  end

end

  

#end
