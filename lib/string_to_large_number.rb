require 'rubygems'

class String
  def to_large_number
    value = self.strip
    return nil if value.nil?
    return nil if value.empty?
    return nil if value === 'nil'
    return nil if value.respond_to?(:blank?) && value.blank?
    
    multipliers = {
      ' mil' => 1000_000,
      ' bil' => 1000_000_000,
      ' tri' => 1000_000_000_000,
    }

    begin
      value   = value.strip.gsub(/,/, '')
      value_f = value.to_f
      
      multipliers.each do |key, multiplier|
        return value_f * multiplier if value.include?(key)
      end
      return value_f
    rescue => e
      return nil
    end
  end

  alias :to_large_f :to_large_number
  alias :to_f_large :to_large_number
end
