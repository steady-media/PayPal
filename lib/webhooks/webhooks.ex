defmodule PayPal.Webhooks do
  def verify_signature(params) do
    PayPal.API.post("notifications/verify-webhook-signature", params)
  end

  def list do
    PayPal.API.get("notifications/webhooks")
  end

  def simulate_event(webhook_id, event_type) do
    PayPal.API.post("notifications/simulate-event", %{
      webhook_id: webhook_id,
      event_type: event_type
    })
  end
end
