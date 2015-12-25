require './spec_helper'

describe Operation do

  describe 'when create a new operation' do

    before do
      @operation_with_order = Operation.new(['Admin', 'base', 'Import member'])
    end

    it 'should has role, name and order' do
      @operation_with_order.operations.must_equal 'Admin'
      @operation_with_order.type.must_equal 'base'
      @operation_with_order.index.must_equal 'Import member'
    end
  end

  describe 'when invoke inBelongToBaseline' do

    before do
      @operation_with_order = Operation.new(['Admin', 'base', 'Import member'])
      @operation_without_order = Operation.new(['Admin', 'optional', 'Import member'])
    end

    it 'given with order, should return true' do
      @operation_with_order.is_belong_to_baseLine.must_equal true
    end

    it 'given without order, should return false' do
      @operation_without_order.is_belong_to_baseLine.must_equal false
    end
  end
end
