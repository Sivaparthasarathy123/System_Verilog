// BankAccount & SavingsAccount (Protected Member Example)
class BankAccount;
  protected int balance;

  function new(int b = 0);
    balance = b;
  endfunction

  function void deposit(int amount);
    balance += amount;
  endfunction

  function void withdraw(int amount);
    balance -= amount;
  endfunction
endclass

class SavingsAccount extends BankAccount;
  int interest = 5;

  function new(int b = 0);
    super.new(b);
  endfunction

  function void withdraw(int amount);
    super.withdraw(amount);
    balance = balance + (balance * interest) / 100;
  endfunction

  function void display_balance();
    $display("Savings Account Balance = %0d", balance);
  endfunction
endclass

module Account;
  SavingsAccount sa;

  initial begin
    sa = new(1000);
    sa.deposit(500);
    sa.withdraw(300);
    sa.display_balance();
  end
endmodule
