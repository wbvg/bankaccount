class Bank
    attr_accessor :name, :accounts
    def initialize(name)
      @name = name
      @accounts = {}
    end

    def create_account(name, deposit)
      @accounts[name] = deposit
    end

    def deposit(name, deposit)
      # @accounts[name] = @accounts[name] + deposit amount
      @accounts[name] += deposit
    end

    def balance(name)
      @accounts[name]
    end

    def withdraw(name, amount)
      # @accounts[name] = @accounts[name] - deposit amount
      @accounts[name] -= amount if amount <= @accounts[name]
    end
end