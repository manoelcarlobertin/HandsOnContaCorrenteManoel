class CheckingAccount
  attr_accessor :balance

  def initialize(initial_balance)
    @balance = initial_balance
    puts ("-+")* 32
    puts "Initial balance: US$#{@balance}."
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
      puts ("-+")* 32
      puts "Withdrawal successful( - US$#{amount}). New balance: US$#{@balance}"
    else
      puts "Insufficient funds(only US$#{@balance}) to withdraw this value US$#{amount} !!"
    end
  end

  def deposit(amount)
    @balance += amount
    puts "Deposit successful( + US$#{amount}). New balance: US$#{@balance}"
  end
end
# Creating a new account with an initial balance of US$1000
account = CheckingAccount.new(1000)
# puts ("-+")* 20
# puts "The initial balance was US$ #{balance}."
puts ("-+")* 32
# Making a deposit
account.deposit(500)
puts ""
# Making a withdrawal
account.withdraw(200)
puts ""
# Trying to withdraw an amount greater than the balance
account.withdraw(1500)
puts ""
puts ("-+")* 32
puts "Thank you !! See you soon !! Don't forget to remove the debit card !"