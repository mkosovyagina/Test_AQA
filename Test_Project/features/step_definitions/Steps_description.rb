Given("If my computer OS is Windows") do
    expect(OS.windows?).to be true
end

And("CPU architecture supports x{int}") do |expected_bits|
    processor = ENV['PROCESSOR_ARCHITECTURE']
    expected_bits = expected_bits.to_s
    is_cpu_support = processor.include?(expected_bits)
    expect(is_cpu_support).to be true

end

Then("installed OS should be {int}-bits") do |expected_bits|
    expect(OS.bits).to eql(expected_bits)
end

Then("username should be {string}") do |expected_user|
    is_username_correct = ENV['USERNAME'] == expected_user
    expect(is_username_correct).to be true
end
