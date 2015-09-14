module OpeningHoursHelper

  def opening_hours_table(opening_hours)
    html = "<dl class='dl-horizontal dl-opening-hours'>"
    opening_hours.group_by(&:day_of_week).collect do |day_of_week, opening_periods|
      html << table_line_inner(day_of_week, opening_periods)
    end
    html << "</dl>"
    html.html_safe
  end

  def table_line_inner(day_of_week, opening_periods)
    html = "<dt>#{I18n.t(:"date.day_names")[day_of_week]}</dt>"
    html << "<dd>"
    html << table_line_opening_hour(opening_periods.first)
    html << table_lines_opening_hour(opening_periods.reject{|op| op.id == opening_periods.first.id }) if opening_periods.length > 1
    html << "</dd>"
    html
  end

  def table_lines_opening_hour(opening_periods)
    html = ""
    opening_periods.collect do |opening_period|
      html << "<br>"
      html << table_line_opening_hour(opening_period)
    end
    html
  end

  def table_line_opening_hour(opening_period)
    "de #{opening_period.open_time.to_s(:time)} à #{opening_period.close_time.to_s(:time)}"
  end
end
