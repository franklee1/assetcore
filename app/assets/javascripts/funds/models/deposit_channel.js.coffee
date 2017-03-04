class DepositChannel extends AssetCoreModel.Model
  @configure 'DepositChannel', 'key', 'currency', 'min_confirm', 'max_confirm', 'bank_accounts', 'resource_name'

  @initData: (records) ->
    AssetCoreModel.Ajax.disable ->
      $.each records, (idx, record) ->
        DepositChannel.create(record)

  account: ->
    Account.findBy('currency', @currency)

window.DepositChannel = DepositChannel

