require_relative 'spec_helper'
require_relative '../bank'
#this is defining bank class when not == nil
describe Bank do
  let(:bank) {Bank.new('TDD Bank')}

  describe '#new' do
      it "creates a Bank object" do
      # bank = Bank.new('TDD Bank')
      expect(bank).to_not eq nil
    end
    it "has no accounts" do
      # bank = Bank.new('TDD Bank')
      expect(bank.accounts.count).to eq 0
    end
  end

  describe '#create_account' do
    it "Creates an account" do
    # bank = Bank.new('TDD Bank')
    bank.create_account('Bob', 200)
    expect(bank.accounts['Bob']).to eq 200
    end
  end

describe '#depsoit' do
  it "deposits money from client into account" do
    bank.create_account('Bob',200)
    bank.deposit('Bob', 300)
    expect(bank.accounts['Bob']).to eq 500
    end
  end

describe '#balance' do
  it "returns the balance for the client" do
    bank.create_account('Bob' , 200)
    expect(bank.balance('Bob')).to eq 200
  end
end

describe '#withdraw' do
  it "subtracts money from the account" do
      bank.create_account('Bob', 200)
      bank.withdraw('Bob', 50)
      expect(bank.balance('Bob')).to eq 150
    end

 it "ignores subtracting money from an account greater than the account balance" do
      bank.create_account('Bob', 200)
      bank.withdraw('Bob', 50_000_000)
      expect(bank.balance('Bob')).to eq 200
    end
  end
end





  #end of Bank.class

