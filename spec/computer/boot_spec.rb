describe Computer::Boot do
  subject(:boot) { described_class.new.start }

  context "when initializing a computer, it should present information using sleep()" do
    before do
      allow_any_instance_of(described_class).to receive(:sleep) { puts("Sleeping...") }
    end

    it "calls sleep somewhere in the code" do
      expect { boot }.to output(/Sleeping/).to_stdout
    end

    it "calls the start method and prints 'Booting' to STDOUT" do
      expect { boot }.to output(/Booting/).to_stdout
    end
  end
end
