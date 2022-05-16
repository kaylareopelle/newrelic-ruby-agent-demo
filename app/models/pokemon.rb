class Pokemon < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  class MissingNoError < StandardError; end

  def logging_error
    Rails.logger.error("Beware: MissingNo. 000 Pokemon encountered")
    raise MissingNoError
    # display sad pikachu image
  end
end
