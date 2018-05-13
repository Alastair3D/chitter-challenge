require './lib/peep'

describe Peep do
  describe '#all' do
    it 'shows all peeps' do
      expect(subject.all).to be_an Array
    end
  end
end
