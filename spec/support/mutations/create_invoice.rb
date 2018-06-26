class CreateInvoice < GraphQL::Schema::RelayClassicMutation
  null true

  argument :fee_in_cents, Integer, required: true

  field :invoice, InvoiceType, null: true
  field :errors, [String], null: true

  def resolve(fee_in_cents:)
    [
      OpenStruct.new(
        id: 1231,
        fee_in_cents: fee_in_cents
      )
    ]
  end
end