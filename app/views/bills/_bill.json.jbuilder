json.extract! bill, :id, :file, :do_payment_at, :details, :paid_at, :user_id, :created_at, :updated_at
json.url bill_url(bill, format: :json)
