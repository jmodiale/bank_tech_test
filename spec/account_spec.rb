require 'account'

describe Account do
  let(:account) { Account.new }

  it 'has an initial balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it 'allows client to make a deposit' do
    account.deposit_amount(1000)
    expect(account.balance).to eq 1000
  end

  it 'allows client to make a withdrawal' do
    expect { account.withdraw_amount 1000 }.to change{ account.balance }.by -1000
  end
end