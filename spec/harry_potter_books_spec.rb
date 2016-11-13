require 'harry_potter_books'

describe HarryPotterBooks do
  describe '#optimal_price' do
    context 'when no different books in cart' do
      subject { HarryPotterBooks.new(2,0,0,0,0) }

      it "returns price without any discount" do
        expect(subject.optimal_price).to be_eql(16)
      end

    end
    context 'when 2 different books in cart' do
        subject { HarryPotterBooks.new(3,1,0,0,0) }

        it "returns 5% discount on 2 books" do
            expect(subject.optimal_price).to be_eql(31.2)
        end
    end
    context 'when 3 different books in cart' do
        subject { HarryPotterBooks.new(3,1,1,0,0) }

        it "returns 10% discount on 3 books" do
            expect(subject.optimal_price).to be_eql(37.6)
        end
    end
    context 'when 4 different books in cart' do
        subject { HarryPotterBooks.new(1,1,1,3,0) }

        it "returns 20% discount on 4 books" do
            expect(subject.optimal_price).to be_eql(41.6)
        end
    end
    context 'when 5 different books in cart' do
        subject { HarryPotterBooks.new(1,1,1,3,1) }

        it "returns 25% discount on 5 books" do
            expect(subject.optimal_price).to be_eql(46.0)
        end
    end
    context 'when several groups of different books in cart' do
        subject { HarryPotterBooks.new(2,2,2,1,1) }

        it "returns optimal price for such cart" do
            expect(subject.optimal_price).to be_eql(51.6)
        end
    end
  end
end
