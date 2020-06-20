describe Computer::Boot do
  subject(:boot) { described_class.new.start }

  # This might be the first time you are looking at a test:
  # Context -> group of different expectation for a given scenario
  # Before -> runs before all the expectations
  # http://testing-for-beginners.rubymonstas.org/rspec.html
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
