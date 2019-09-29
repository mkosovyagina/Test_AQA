Given("если на моем компьютере установлен Windows") do
    expect(OS.windows?).to be true
end

And("у процессора {int}-разрядная архитектура") do |expected_bits|
    processor = ENV['PROCESSOR_ARCHITECTURE']
    expected_bits = expected_bits.to_s
    is_cpu_support = processor.include?(expected_bits)
    expect(is_cpu_support).to be true

end

Then("должна быть установлена {int}-битная ОС") do |expected_bits|
    expect(OS.bits).to eql(expected_bits)
end