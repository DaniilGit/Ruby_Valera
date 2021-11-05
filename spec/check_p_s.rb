require './lib/print_status'
RSpec.describe PrintStatus do
  describe '#correct all, marginal' do
    subject do
      status = PrintStatus.new('marginal')
      status.print_emotion
    end
    it { is_expected.to eq '(*´ー`)旦 旦(￣ω￣*)' }
  end
end
RSpec.describe PrintStatus do
  describe '#correct all, work' do
    subject do
      status = PrintStatus.new('work')
      status.print_emotion
    end
    it { is_expected.to eq '(；￣Д￣)' }
  end
end
RSpec.describe PrintStatus do
  describe '#correct all, sleep' do
    subject do
      status = PrintStatus.new('sleep')
      status.print_emotion
    end
    it { is_expected.to eq '(￣ρ￣)..zzZZ' }
  end
end

RSpec.describe PrintStatus do
  describe '#correct all, wine' do
    subject do
      status = PrintStatus.new('wine')
      status.print_emotion
    end
    it { is_expected.to eq '( ˘▽˘)っ♨' }
  end
end

RSpec.describe PrintStatus do
  describe '#correct all, sing' do
    subject do
      status = PrintStatus.new('sing')
      status.print_emotion
    end
    it { is_expected.to eq '(ˇ▽ˇ)ノ♪♬♫' }
  end
end

RSpec.describe PrintStatus do
  describe '#correct all, bar' do
    subject do
      status = PrintStatus.new('bar')
      status.print_emotion
    end
    it { is_expected.to eq 'ﾐ(o*･ω･)ﾉ' }
  end
end

RSpec.describe PrintStatus do
  describe '#correct all, behold' do
    subject do
      status = PrintStatus.new('behold')
      status.print_emotion
    end
    it { is_expected.to eq '(─‿‿─)' }
  end
end
RSpec.describe PrintEmo do
  describe '#uncorrect' do
    subject do
      status = PrintStatus.new('sing song')
      status.print_emotion
    end
    it { is_expected.to eq '?!' }
  end
end
