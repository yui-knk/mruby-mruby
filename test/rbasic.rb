assert 'MrbState::RBasic.new' do
  r = MrbState::RBasic.new(Object.new)
  assert_equal MrbState::RBasic, r.class
  assert_equal Object, r.class.superclass
end

assert 'Object#to_RBasic' do
  r = [1,2,3].to_RBasic
  assert_equal MrbState::RBasic, r.class
  assert_equal Object, r.class.superclass
end

assert 'MrbState::RBasic.size' do
  assert_true 0 < MrbState::RBasic.size
end

assert 'MrbState::RBasic.ttlist' do
  assert_true MrbState::RBasic.ttlist.has_key?("MRB_TT_ARRAY")
end

assert 'MrbState::RBasic#tt' do
  r = [1,2,3].to_RBasic
  assert_equal "MRB_TT_ARRAY", r.tt

  r = 1.to_RBasic
  assert_equal "MRB_TT_FIXNUM", r.tt
end

assert 'MrbState::RBasic#color' do
  r = [1,2,3].to_RBasic
  gc_definition = ["MRB_GC_GRAY","MRB_GC_WHITE_A","MRB_GC_WHITE_B","MRB_GC_WHITES","MRB_GC_BLACK"]
  assert_include gc_definition, r.color
end

assert 'MrbState::RBasic#gc_gray?' do
  r = [1,2,3].to_RBasic
  bool = [true, false]
  assert_include bool, r.gc_gray?
end

assert 'MrbState::RBasic#gc_white_a?' do
  r = [1,2,3].to_RBasic
  bool = [true, false]
  assert_include bool, r.gc_white_a?
end

assert 'MrbState::RBasic#gc_white_b?' do
  r = [1,2,3].to_RBasic
  bool = [true, false]
  assert_include bool, r.gc_white_b?
end

assert 'MrbState::RBasic#gc_whites?' do
  r = [1,2,3].to_RBasic
  bool = [true, false]
  assert_include bool, r.gc_whites?
end

assert 'MrbState::RBasic#gc_black?' do
  r = [1,2,3].to_RBasic
  bool = [true, false]
  assert_include bool, r.gc_black?
end

assert 'MrbState::RBasic#flags' do
  r = [1,2,3].to_RBasic
  assert_kind_of Fixnum, r.flags
end

