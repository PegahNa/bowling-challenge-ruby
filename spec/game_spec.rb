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

    describe "#is_strike?" do
        it "should return true if the first ball is a strike" do
            frame.roll(10)
            expect(frame.is_strike?).to be true
        end
        it "should return false if the first ball is not a strike" do
            frame.roll(9)
            expect(frame.is_strike?).to be false
        end
    end

    describe "#is_spare?" do
        it "should return true if the first two balls are a spare" do
            frame.roll(9)
            frame.roll(1)
            expect(frame.is_spare?).to be true
        end

        it "shoulr return false if the first two balls are not a spare" do
            frame.roll(9)
            frame.roll(2)
            expect(frame.is_spare?).to be false
        end
    end
end