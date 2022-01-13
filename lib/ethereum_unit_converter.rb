# frozen_string_literal: true

require_relative 'ethereum_unit_converter/version'

module EthereumUnitConverter
  UNITS = {
    wei: 1,
    kwei: 1000,
    ada: 1000,
    femtoether: 1000,
    mwei: 1_000_000,
    babbage: 1_000_000,
    picoether: 1_000_000,
    gwei: 1_000_000_000,
    shannon: 1_000_000_000,
    nanoether: 1_000_000_000,
    nano: 1_000_000_000,
    szabo: 1_000_000_000_000,
    microether: 1_000_000_000_000,
    micro: 1_000_000_000_000,
    finney: 1_000_000_000_000_000,
    milliether: 1_000_000_000_000_000,
    milli: 1_000_000_000_000_000,
    ether: 1_000_000_000_000_000_000,
    eth: 1_000_000_000_000_000_000,
    kether: 1_000_000_000_000_000_000_000,
    grand: 1_000_000_000_000_000_000_000,
    einstein: 1_000_000_000_000_000_000_000,
    mether: 1_000_000_000_000_000_000_000_000,
    gether: 1_000_000_000_000_000_000_000_000_000,
    tether: 1_000_000_000_000_000_000_000_000_000_000
  }.freeze

  class << self
    def convert(amount, unit = 'wei', to_unit = 'ether')
      return nil if amount.nil?

      return from_wei(amount, to_unit) if unit == 'wei'

      from_wei(to_wei(amount, unit), to_unit)
    end

    def to_wei(amount, unit = 'ether')
      return nil if amount.nil?

      begin
        BigDecimal(UNITS[unit.to_sym] * amount, 16).to_s.to_i
      rescue StandardError => e
        raise e.class
      end
    end

    def from_wei(amount, unit = 'ether')
      return nil if amount.nil?

      begin
        (BigDecimal(amount, 16) / BigDecimal(UNITS[unit.to_sym], 16)).to_s
      rescue StandardError => e
        raise e.class
      end
    end
  end
end
