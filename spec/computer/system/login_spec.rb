describe Computer::System::Login do
  let(:pin) { "1234" }

  # The `#` symbol means we are describing an `instance` method in the class.
  describe "#prompt_user" do
    subject(:login) { described_class.new }

    before do
      allow_any_instance_of(described_class).to receive(:gets) { instance_double("gets.chomp", chomp: pin) }
      allow_any_instance_of(described_class).to receive(:user_input).and_return(false, true)
    end

    it "keeps prompting the user for a PIN until it gets a valid one" do
      expect { login.prompt_user }.to output(/The PIN is incorrect, try again/).to_stdout
    end

    it "prompts the user for a PIN" do
      expect { login.prompt_user }.to output(/In order to access this computer, please insert your PIN/).to_stdout
    end
  end

  # The `#` symbol means we are describing an `instance` method
  describe "#authenticate" do
    subject(:login) { described_class.new.authenticate(pin: pin_input) }

    let(:pin_input) { "" }

    before { stub_const("Computer::System::Login::PIN", pin) }

    it "has a PIN constant that holds the value to check against" do
      expect(described_class::PIN).to be_a(String)
    end

    context "when the pin is correct" do
      let(:pin_input) { pin }

      it "authenticates a user when a PIN is correctly filled" do
        expect(login).to eq true
      end
    end

    context "when the pin is incorrect" do
      let(:input_pin) { "wrong-pin" }

      it "doesn't authenticate a user when a PIN is incorrect" do
        expect(login).to eq false
      end
    end
  end
end
