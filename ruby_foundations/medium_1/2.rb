class TextAnalyzer
  def process
    file = File.read('text.txt')
    yield(file)
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\.\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n").count} lines" }
analyzer.process { |text| puts "#{text.split.count} words" }