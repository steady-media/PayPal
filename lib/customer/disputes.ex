defmodule PayPal.Customer.Disputes do
  @type adjudication_outcome :: :BUYER_FAVOR | :SELLER_FAVOR

  @spec adjudicate(String.t(), adjudication_outcome) :: {atom, any}
  def adjudicate(dispute_id, adjudication_outcome)
      when adjudication_outcome in [:BUYER_FAVOR, :SELLER_FAVOR] do
    PayPal.API.post("customer/disputes/#{dispute_id}/adjudicate", %{
      adjudication_outcome: adjudication_outcome
    })
  end
end
