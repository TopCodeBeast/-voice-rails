class FlatCustomerSerializer < ActiveModel::Serializer

  attributes :id, :email, :fullname, :caller_ids, :zendesk_id
  has_many   :history_entries, serializer: HistoryEntrySerializer
  embed      :ids, include: false


  def history_entries
    object.history_entries.desc(:created_at).limit(5)
  end
end