require 'account'
require 'date'

describe Account do
  let(:account) { Account.new }

  it 'has an initial balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it 'allows client to make a deposit' do
    account.deposit_amount(Date.today, 1000)
    expect(account.balance_value).to eq 1000
  end

  it 'allows client to make a withdrawal' do
    expect { account.withdrawal_amount(Date.today, 1000) }.to change{ account.balance }.by -1000
  end

  it 'allows multiple arguments' do
    expect(subject).to respond_to(:deposit_amount).with(2).arguments
  end

  it 'prints the account statement' do
    account.deposit_amount(Date.today, 2000)
    account.withdrawal_amount(Date.today, 500)
    expect(account.acct_statement).to eq(
      ["2022-02-22 || No Credit ||500 || 1500", "2022-02-22 ||2000 || No Debit || 2000"])
  end
end