require 'minitest/autorun'
require '../src/operation'

describe Operation do

  describe 'when create a new operation' do

    before do
      @operation_with_order = Operation.new('Admin', 'Import member', '1')
    end

    it 'should has role, name and order' do
      @operation_with_order.role.must_equal 'Admin'
      @operation_with_order.name.must_equal 'Import member'
      @operation_with_order.order.must_equal '1'
    end
  end

  describe 'when invoke inBelongToBaseline' do

    before do
      @operation_with_order = Operation.new('Admin', 'Import member', '1')
      @operation_without_order = Operation.new('Admin', 'Import member', '')
    end

    it 'given with order, should return true' do
      @operation_with_order.isBelongToBaseLine.must_equal true
    end

    it 'given without order, should return false' do
      @operation_without_order.isBelongToBaseLine.must_equal false
    end
  end
end
