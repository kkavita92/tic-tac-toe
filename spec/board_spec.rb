require 'board'

describe Board do
  subject(:board) { described_class.new }

  describe '3x3 grid' do
    it 'creates grid - array of three arrays representing rows' do
      expect(board.grid.length).to eq 3
    end

    it 'creates grid - each sub-array has three columns' do
      expect(board.grid[0].length).to eq 3
      expect(board.grid[1].length).to eq 3
      expect(board.grid[2].length).to eq 3
    end
  end

  it 'allows player to make a move' do
    board.play("1")
    expect(board.grid[0][0]).to eq 'X'
  end

  it 'allows alternate player to make a move' do
    board.switch_player
    board.play("1")
    expect(board.grid[0][0]).to eq 'O'
  end

  it 'can set value of grid' do
    board.set_value(1, 1, 'X')
    expect(board.grid[1][1]).to eq 'X'
  end

  it 'can translate move to matching coordinate on grid' do
    expect(board.convert_move_to_coordinate("1")).to eq [0, 0]
  end

  it 'allows player to be switched' do
    expect(board.switch_player).to eq 'O'
  end

end
