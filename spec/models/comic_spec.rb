require 'rails_helper'

RSpec.describe Comic, type: :model do
  before do
    @comic = FactoryBot.build(:comic)
  end
  describe '漫画投稿機能' do
    context '漫画が投稿できる場合' do
      it 'image、title、author、illustrator、genre_id、magazine_id、decade_id、publisher、publication、impression、user_idが存在すれば登録できる' do
        expect(@comic).to be_valid
      end
    end
    context '漫画が投稿できない場合' do
      it 'titleが空では投稿できない' do
        @comic.title = ''
        @comic.valid?
        expect(@comic.errors.full_messages).to include("Title can't be blank")
      end
      it 'titleが40字より多いと投稿できない' do
        @comic.title = 'A' * 41
        @comic.valid?
        expect(@comic.errors.full_messages).to include("Title is too long (maximum is 40 characters)")
      end
      it 'authorが空では投稿できない' do
        @comic.author = ''
        @comic.valid?
        expect(@comic.errors.full_messages).to include("Author can't be blank")
      end
      it 'authorが40字より多いと投稿できない' do
        @comic.author = 'A' * 41
        @comic.valid?
        expect(@comic.errors.full_messages).to include("Author is too long (maximum is 40 characters)")
      end
      it 'illustratorが40字より多いと投稿できない' do
        @comic.illustrator = 'A' * 41
        @comic.valid?
        expect(@comic.errors.full_messages).to include("Illustrator is too long (maximum is 40 characters)")
      end
      it 'genre_idが空では投稿できない' do
        @comic.genre_id = 1
        @comic.valid?
        expect(@comic.errors.full_messages).to include("Genre can't be blank")
      end
      it 'magazine_idが空では投稿できない' do
        @comic.magazine_id = 1
        @comic.valid?
        expect(@comic.errors.full_messages).to include("Magazine can't be blank")
      end
      it 'decade_idが空では投稿できない' do
        @comic.decade_id = 1
        @comic.valid?
        expect(@comic.errors.full_messages).to include("Decade can't be blank")
      end
      it 'publisherが40字より多いと投稿できない' do
        @comic.publisher = 'A' * 41
        @comic.valid?
        expect(@comic.errors.full_messages).to include("Publisher is too long (maximum is 40 characters)")
      end
      it 'publicationが40字より多いと投稿できない' do
        @comic.publication = 'A' * 41
        @comic.valid?
        expect(@comic.errors.full_messages).to include("Publication is too long (maximum is 40 characters)")
      end
      it 'impressionが50字より多いと投稿できない' do
        @comic.impression = 'A' * 51
        @comic.valid?
        expect(@comic.errors.full_messages).to include("Impression is too long (maximum is 50 characters)")
      end
      it 'userが紐づいていないと投稿できない' do
        @comic.user = nil
        @comic.valid?
        expect(@comic.errors.full_messages).to include("User must exist")
      end
    end
  end
end
