require 'rails_helper'
require 'factory_bot_rails'
require 'devise'

RSpec.describe ArticlesController, type: :request do
  include Devise::Test::IntegrationHelpers

  let(:user) { FactoryBot.create(:admin) }
  let(:article) { FactoryBot.create(:article) }

  before do
    sign_in user
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get articles_path
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get new_article_path
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    it 'creates a new article' do
      expect {
        post articles_path, params: { article: { title: 'Test Title', content: 'Test content' } }
      }.to change(Article, :count).by(1)

      expect(response).to redirect_to(article_path(Article.last))
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      get article_path(article)
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      get edit_article_path(article)
      expect(response).to be_successful
    end
  end

  describe 'PATCH #update' do
    it 'updates the article' do
      patch article_path(article), params: { article: { title: 'Updated Title', content: 'Updated content' } }
      expect(response).to redirect_to(article_path(article))
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the article' do
      article_to_delete = FactoryBot.create(:article)
      expect {
        delete article_path(article_to_delete)
      }.to change(Article, :count).by(-1)

      expect(response).to redirect_to(articles_path)
    end
  end
end