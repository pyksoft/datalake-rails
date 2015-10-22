module NotaryRecordsHelper
  def table_link(notary_record)
    ap notary_record
    if notary_record.notary_type == "foreign"
      notary_foreign_table_path(notary_record.notary_table_id)
    else
      '/'
    end
  end
end