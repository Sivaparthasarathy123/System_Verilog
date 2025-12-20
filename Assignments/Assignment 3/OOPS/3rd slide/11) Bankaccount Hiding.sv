// Bankaccount hiding

  class BankAccount;
  protected int balance;

  function new(int b);
    balance = b;
  endfunction

  function void deposit(int amount);
    if (amount > 0)
      balance += amount;
  endfunction

  function void withdraw(int amount);
    if (amount <= balance)
      balance -= amount;
    else
      $display("Insufficient balance");
  endfunction

  function int get_balance();
    return balance;
  endfunction

endclass

module Hiding;
  initial begin
    BankAccount acc = new(1000);

    acc.deposit(500);
    acc.withdraw(300);

    $display("Final Balance = %0d", acc.get_balance());
  end
endmodule
