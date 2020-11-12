require 'spec_helper'

require_relative '../sample1'

RSpec.describe Sample1 do
    it '引数nameを省略するとエラー' do
        expect{ Sample1.new(value: 1) }.to raise_error IllegalParamError
    end
    it '引数nameを省略するとエラーメッセージ' do
        expect{ Sample1.new(value: 1) }.to raise_error 'パラメーターエラー'
    end
    it '引数valueを省略するとエラー' do
        expect{ Sample1.new(name: 1) }.to raise_error IllegalParamError
    end
    it '引数valueを省略するとエラーメッセージ' do
        expect{ Sample1.new(name: 1) }.to raise_error 'パラメーターエラー'
    end
end