require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿機能' do
    context 'コメントが投稿できる場合' do
      it 'content、user_id、comic_idが存在すれば投稿できる' do
        expect(@comment).to be_valid
      end
    end
    context 'コメントが投稿できない場合' do
      it 'contentが空だと投稿できない' do
        @comment.content = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Content can't be blank")
      end
      it 'userが紐づいていないと投稿できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("User must exist")
      end
      it 'comicが紐づいていないと投稿できない' do
        @comment.comic = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Comic must exist")
      end
    end
  end
end
