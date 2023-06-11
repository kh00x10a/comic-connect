class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'バトル' },
    { id: 3, name: 'SF' },
    { id: 4, name: 'ファンタジー' },
    { id: 5, name: 'スポーツ' },
    { id: 6, name: 'サスペンス・ミステリー' },
    { id: 7, name: 'ギャグ・コメディー' },
    { id: 8, name: 'ヒューマンドラマ' },
    { id: 9, name: '恋愛・ラブコメ' },
    { id: 10, name: 'ホラー' },
    { id: 11, name: 'グルメ・料理' },
    { id: 12, name: '青春・学園' },
    { id: 13, name: 'ビジネス・職業' },
    { id: 14, name: '医療' },
    { id: 15, name: '歴史・時代劇' },
    { id: 16, name: 'ギャンブル' },
    { id: 17, name: 'ヤンキー・任侠' },
    { id: 18, name: 'その他' }
  ]
  end