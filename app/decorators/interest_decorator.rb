class InterestDecorator < Draper::Decorator
  delegate_all
  def description
    if object.description
      object.description
    else
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget sollicitudin justo. Praesent interdum lacus ac mollis porta. Sed non efficitur lectus. Quisque eget eros ultricies, consequat velit congue, elementum est. In hac habitasse platea dictumst. Suspendisse erat nulla, luctus laoreet feugiat et, scelerisque venenatis sapien. Nullam faucibus, magna ut feugiat tempus, turpis erat facilisis risus, vitae vulputate enim augue sit amet lorem."
    end
  end

end
