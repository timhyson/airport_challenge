require 'airport'
## Note these are just some guidelines!
## Feel free to write more tests!!

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport
# and how that is implemented.
#
# If the airport is full then no planes can land

describe Airport do
  let(:plane) { double :plane }

  it 'has a capacity of 10 planes' do
    expect(subject.capacity).to eq 10
  end

  describe 'take off' do
    xit 'instructs a plane to take off'

    # it 'responds to release a plane' do
    #   expect(subject).to respond_to (:release)
    # end
    it { is_expected.to respond_to(:release).with(1).argument }

    xit 'releases a plane' do
    end
  end

  describe 'landing' do
    xit 'instructs a plane to land'

    # it 'responds to receive a plane' do
    #   expect(subject).to respond_to :receive
    # end
    it { is_expected.to respond_to(:receive).with(1).argument }
    it 'raises an error when full' do
        10.times { subject.receive :plane }
        expect { subject.receive :plane }.to raise_error 'airport full'
    end

    xit 'receives a plane'
  end

  describe 'traffic control' do
    context 'when airport is full' do
      it 'does not allow a plane to land'
      # it { is_expected.to respond_to(:full?) }
    end

    # Include a weather condition.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy,
    # the plane can not take off and must remain in the airport.
    #
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    context 'when weather conditions are stormy' do
      xit 'does not allow a plane to take off'

      xit 'does not allow a plane to land'
    end
  end
end
