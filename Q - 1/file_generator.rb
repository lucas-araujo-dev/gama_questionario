require 'json'
require 'csv'

class Json
  def generate(name, data)
    File.write(name, data.to_json)
  end
end

class Csv
  def generate(name, data)
    headers = data.keys
    CSV.open(name, 'w') do |csv|
      csv << headers
      csv << data.values
    end
  end
end

class FileGenerator
  GENERATORS = {
    json: Json,
    csv: Csv,
  }

  def generate_file(type, name, data)
    generator = GENERATORS[type]
    raise "Format not supported" unless generator
    generator.new.generate(name, data)
  end
end
