class Tasks::Batch
  def self.execute
    # 実行したいコードを書く
    conditions = Bookmark.arel_table
    limit = (Time.current)-(3600*24)
    bookmarks = Bookmark.where(conditions[:created_at].lt(limit))
    bookmarks.each do |bookmark|
      bookmark.destroy
    end
  end
end