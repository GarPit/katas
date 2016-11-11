require 'harry_potter_books'

describe HarryPotterBooks do
  describe '#optimal_price' do
    context 'when no different books in cart' do
      subject { HarryPotterBooks.new(2,0,0,0,0) }

      it "returns price without any discount" do
        expect(subject.optimal_price).to be_eql(16)
      end

    end
  end
end
