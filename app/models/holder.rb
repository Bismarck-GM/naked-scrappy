class Holder < ApplicationRecord

  def task_to_run_at_four_thirty_in_the_morning
    total_holders = 0
    first(1400).each do |holder|
      total_holders += holder.amount || 0
      holder.destroy
    end
    average_holders = (total_holders / 1400) || 0
    Rails.logger.info "#{Time.now} - Destroy daily holders - Average Daily Holders #{average_holders}"
  end
end
