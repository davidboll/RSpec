require 'spec_helper'

describe Game do
  describe '#call' do

    let(:description) do |example|
      example.description
    end

    context 'when the choices are different' do

      subject(:game) { described_class.new } #described_class is a helper-class to "Game"

      it 'rock beats scissors' do |example|
        expect(subject.call('rock', 'scissors')).to eq(description)
      end
    end
    context 'when the choices are the same' do

      it 'draw' do |example|
        expect(subject.call('rock', 'rock')).to eq(description)
      end
    end
  end
end
