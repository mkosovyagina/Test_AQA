@os_checks
Feature: System propeties checking up
    Get and check information about OS, CPU, etc.
@os_bits_check
Scenario: Checking up OS bits
    Given If my computer OS is Windows
    And CPU architecture supports x64
    Then installed OS should be 64-bits

@os_username
Scenario: Checking username
    Given If my computer OS is Windows
    Then username should be 'user'