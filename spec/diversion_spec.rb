require 'diversion'

describe Diversion do
  describe '#find' do
    context 'when number of digits is 0' do
      subject { Diversion.new(0) }

      it 'raises ArgumentError' do
        expect { subject.find }.to raise_error(ArgumentError).with_message("Number of digits should be greater than 0")
      end
    end
    context 'when number of digits = 1' do
      subject { Diversion.new(1) }

      it "returns 2" do
        expect(subject.find).to be_eql(2)
      end
    end
    context 'when number of digits = 3' do
      subject { Diversion.new(3) }

      it "returns 5" do
        expect(subject.find).to be_eql(5)
      end
    end
  end
  describe '#binaries' do
    subject { Diversion.new(2) }

    it 'returns all possible binary numbers' do
      expect(subject.binaries).to contain_exactly('00', '01', '11', '10')
    end
  end
  describe '#numbers' do
    subject { Diversion.new(2) }

    it 'returns all possible numbers' do
      expect(subject.numbers).to contain_exactly(0, 1, 2, 3)
    end
  end
end
