require './lib/print_emotion'
RSpec.describe PrintEmo do
  describe '#correct all, happy' do
    subject do
      emoti = PrintEmotion.new('cheerfulness')
      emoti.print_emotion
    end
    it { is_expected.to eq '(ᵔ◡ᵔ)' }
  end
end
RSpec.describe PrintEmo do
  describe '#correct all, sad' do
    subject do
      emoti = PrintEmotion.new('fatigue')
      emoti.print_emotion
    end
    it { is_expected.to eq '(￣ ￣|||)' }
  end
end
RSpec.describe PrintEmo do
  describe '#uncorrect' do
    subject do
      emoti = PrintEmotion.new('sad')
      emoti.print_emotion
    end
    it { is_expected.to eq '?!' }
  end
end
