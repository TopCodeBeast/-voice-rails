class DatasetSerializer < ActiveModel::Serializer

  attributes :id, :active_call_count, :queued_call_count, :dispatched_call_count, :pre_queued_call_count
end
