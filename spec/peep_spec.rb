require './lib/peep'
require 'pg'

describe Peep, :peep do

  describe '#all' do
    it 'returns an array of peep hashes showing author: peep' do
      connection = PG.connect(dbname: 'chitter_test')
      connection.exec("INSERT INTO peeps (text, author) VALUES('This is my first peep', 'Alastair Edmonds');")
      expect(Peep.all).to eq [{ text: 'This is my first peep', author: 'Alastair Edmonds' }]
    end
  end

  describe '#create' do
    it 'Creates a peep and returns a new instance of the Peep class' do
      Peep.create('This is my first peep', 'Alastair Edmonds')
      expect(Peep.all).to eq [{ text: 'This is my first peep', author: 'Alastair Edmonds' }]
    end
  end
end
