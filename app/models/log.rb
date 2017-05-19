class Log < ApplicationRecord
  before_save do
    self.video = video_id(self.video)
  end

  scope :newest_first, -> { order(created_at: :desc) }

  # convert the video url given by the user to just the video id
  # returns false if it fails
  def video_id(video_url)
    url_array = video_url.split('/')
    if url_array[2] == "www.youtube.com" || url_array[2] == "youtu.be"
      return url_array.last.split('v=').last
    else
      false
    end
  end
end
