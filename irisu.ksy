meta:
  id: irisu
  file-extension: rpy
  endian: le
  bit-endian: le
seq:
  - id: seed
    type: u4
    doc: RNG seed for the replay, taken from DxLib counter
  - id: level
    type: u4
    doc: Highest level reached
  - id: score
    type: u4
    doc: Final score
  - id: combo
    type: u4
    doc: Highest combo reached
  - id: mode
    type: u4
    doc: Game mode.
    enum: e_mode
  - id: padding
    doc: Zero padding, ignored
    size: 0x20
  - id: frames
    size: 4
    type: frame_t
    doc: Array of input frames
    repeat: eos
types:
  frame_t:
    seq:
      - id: left_click
        type: b1
      - id: right_click
        type: b1
      - id: x_pos
        type: b10
      - id: y_pos
        type: b10
enums:
  e_mode:
    0: irisu
    1: metsu