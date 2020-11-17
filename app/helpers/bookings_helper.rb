module BookingsHelper
  def handle_name_status name
    case name
    when Settings.admin_booking.enum_status.pending
      t "booking.status.pending"
    when Settings.admin_booking.enum_status.accept
      t "booking.status.accept"
    when Settings.admin_booking.enum_status.rejected
      t "booking.status.rejected"
    else
      t "booking.status.cancel"
    end
  end

  def handle_layout name
    case name
    when Settings.admin_booking.enum_status.pending
      "danger"
    when Settings.admin_booking.enum_status.accept
      "success"
    when Settings.admin_booking.enum_status.rejected
      "warning"
    else
      "active"
    end
  end
end