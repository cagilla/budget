class Account < ActiveRecord::Base
  require 'date'
  has_secure_password
  validates :name, presence: true, uniqueness: true
  
  has_many :transactions, dependent: :destroy
  
  def final_balance
  	transactions.to_a.sum { |transaction| transaction.amount }
 	end
 	
 	def available_balance
 		transactions.to_a.sum { |transaction| transaction.date <= Date.today ? 		
 																						transaction.amount : 0 }
 	end
end
