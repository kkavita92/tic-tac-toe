require 'board'

describe Board do
  subject(:board) { described_class.new }

  it 'creates array of three arrays representing rows' do
    expect(board.grid.length).to eq 3
  end

end
