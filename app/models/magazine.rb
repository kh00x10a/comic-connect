class Magazine < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '少年' },
    { id: 3, name: '青年' },
    { id: 4, name: '少女' },
    { id: 5, name: '女性' },
    { id: 6, name: 'TL(ティーンズラブ)' },
    { id: 7, name: 'BL(ボーイズラブ)' },
    { id: 8, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :comics
  
  end