class AsyncService
  def self.perform
    threads = []
    paths = [
      'https://rubygems.org',
      'https://rubyonrails.org',
      'https://github.com'
    ]

    paths.each do |path|
      threads << Thread.new { Net::HTTP.get(URI.parse(path)) }
    end

    threads.each(&:join)
  end
end
