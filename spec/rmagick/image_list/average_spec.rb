RSpec.describe Magick::ImageList, "#average" do
  before do
    @ilist = Magick::ImageList.new
  end

  it "works" do
    @ilist.read(IMAGES_DIR + '/Button_0.gif', IMAGES_DIR + '/Button_0.gif')
    expect do
      img = @ilist.average
      expect(img).to be_instance_of(Magick::Image)
    end.not_to raise_error
    expect { @ilist.average(1) }.to raise_error(ArgumentError)
  end
end