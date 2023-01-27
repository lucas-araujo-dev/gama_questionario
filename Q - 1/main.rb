require_relative  'file_generator'


p generator = FileGenerator.new
p generator.generate_file(:json, 'teste.json', {a: 1, b: 2})
p generator.generate_file(:csv, 'teste.csv', {a: 1, b: 2})
