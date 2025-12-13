// Create a class Account with a variable balance. Write a method that compares the balance of this object with another object and returns the larger one. 
class Account;
  int balance;

  function new(int b);
    balance = b;
  endfunction

  function Account compare(Account other);
    if (this.balance >= other.balance)
      return this;
    else
      return other;
  endfunction
endclass

module test;
  initial begin
    Account a1 = new(5000);
    Account a2 = new(8000);

    Account rich = a1.compare(a2);
    $display("Higher Balance = %0d", rich.balance);
  end
endmodule
