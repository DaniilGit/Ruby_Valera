require './lib/print_status'

describe PrintStatus do
  describe '#correct all, marginal' do
    subject do
      PrintStatus.new('marginal').status.print_emotion
    end
    it { is_expected.to eq '(*´ー`)旦 旦(￣ω￣*)' }
  end
end

describe PrintStatus do
  describe '#correct all, work' do
    subject do
      PrintStatus.new('work').status.print_emotion
    end
    it { is_expected.to eq '(；￣Д￣)' }
  end
end

describe PrintStatus do
  describe '#correct all, sleep' do
    subject do
      PrintStatus.new('sleep').print_emotion
    end
    it { is_expected.to eq '(￣ρ￣)..zzZZ' }
  end
end

describe PrintStatus do
  describe '#correct all, wine' do
    subject do
      PrintStatus.new('wine').print_emotion
    end
    it { is_expected.to eq '( ˘▽˘)っ♨' }
  end
end

describe PrintStatus do
  describe '#correct all, sing' do
    subject do
      PrintStatus.new('sing').print_emotion
    end
    it { is_expected.to eq '(ˇ▽ˇ)ノ♪♬♫' }
  end
end

describe PrintStatus do
  describe '#correct all, bar' do
    subject do
      PrintStatus.new('bar').print_emotion
    end
    it { is_expected.to eq 'ﾐ(o*･ω･)ﾉ' }
  end
end

describe PrintStatus do
  describe '#correct all, behold' do
    subject do
      PrintStatus.new('behold').print_emotion
    end
    it { is_expected.to eq '(─‿‿─)' }
  end
end

describe PrintEmo do
  describe '#uncorrect' do
    subject do
      PrintStatus.new('sing song').print_emotion
    end
    it { is_expected.to eq '?!' }
  end
end
