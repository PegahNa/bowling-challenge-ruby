require 'frame'

describe Frame do
    let(:frame) {Frame.new}

    describe "#roll" do
        it "should add the pins to the ball scores array" do
            frame.roll(10)
            expect(frame.ball_scores).to eq([10])
        end
        it "should only allow two rolls per frame" do
            frame.roll(10)
            frame.roll(10)
            expect { frame.roll(10)}.to raise_error(RuntimeError)
        end
    end

    


end