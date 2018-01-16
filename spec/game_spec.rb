require 'spec_helper'

describe Game do
  subject(:game) { described_class.new } #described_class is a helper-class to "Game"

  describe '#call' do
    let(:description) do |example|
      example.description
    end

    context 'when the choices are different' do

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

  describe '#get_user_input' do

    let(:description_message) { "please select rock paper or scissors\n" }

    it 'prompts the user with instructions' do
      expect{subject.get_user_input}.to output(description_message).to_stdout
    end

    it 'return what the user typed as an input' do
      expect(subject.get_user_input).to eq('rock')
    end
  end
end
