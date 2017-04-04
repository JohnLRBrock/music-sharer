require 'rails_helper'

RSpec.describe LogsHelper, :type => :helper do

  let(:full)          { 'https://www.youtube.com/watch?v=Nnl0_NTOiqE' }
  let(:short)         { 'https://youtu.be/Nnl0_NTOiqE' }
  let(:embed)         { 'https://www.youtube.com/embed/Nnl0_NTOiqE' }
  let(:argv)          { 'https://www.youtube.com/watch?argv=xyz&v=Nnl0_NTOiqE' }
  let(:time_stamp)    { 'https://youtu.be/Nnl0_NTOiqE?t=42s' }

  let(:videos_id)      { 'Nnl0_NTOiqE' }
  let(:videos_stamped) { 'Nnl0_NTOiqE?t=42s' }


  describe '#youtube_link' do
    it 'uses a youtube video id to create a youtube link' do
      expect(youtube_link videos_id).to eq(embed)
    end
  end
  describe '#video_id' do
    context 'full url' do
      it 'returns the video id' do
        expect(video_id full).to eq videos_id
      end
    end
    context 'shortened url' do
      it 'returns the video id' do
        expect(video_id short).to eq videos_id
      end
    end
    context 'embeded url' do
      it 'returns the video id' do
        expect(video_id embed).to eq videos_id
      end
    end
    context 'a url with argv' do
      it 'returns the video id' do
        expect(video_id argv).to eq videos_id
      end
    end
    context 'url with timestamp' do
      it 'returns the video id with the timestamp' do
        expect(video_id time_stamp).to eq videos_stamped
      end
    end
  end
end