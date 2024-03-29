---
layout: home
template_engine: erb
---

This is a demo of a [Bridgetown site](https://www.bridgetownrb.com) rendering the [Primer ViewComponent-based design library](https://primer.style/view-components/) by GitHub.

### CounterComponent

<%= render(Primer::CounterComponent.new(count: 25, font_size: 4)) %>

```erb
# ERB code:

<%%= render(Primer::CounterComponent.new(count: 25, font_size: 4)) %>
```

### ButtonComponent

<div>
<%= render(Primer::ButtonComponent.new) { "Default" } %>
<%= render(Primer::ButtonComponent.new(scheme: :primary)) { "Primary" } %>
<%= render(Primer::ButtonComponent.new(scheme: :danger)) { "Danger" } %>
<%= render(Primer::ButtonComponent.new(scheme: :outline)) { "Outline" } %>
</div>

```erb
<%%= render(Primer::ButtonComponent.new) { "Default" } %>
<%%= render(Primer::ButtonComponent.new(scheme: :primary)) { "Primary" } %>
<%%= render(Primer::ButtonComponent.new(scheme: :danger)) { "Danger" } %>
<%%= render(Primer::ButtonComponent.new(scheme: :outline)) { "Outline" } %>
```

### BorderBoxComponent

<%= render(Primer::BorderBoxComponent.new) do |component|
  component.header { safe "<h2>Header</h2>" }
  component.body do
    markdownify do %>
Markdown **content** rendered _inside_ the component by [Bridgetown](https://www.bridgetownrb.com).
<%  end
  end
  component.row { "Row one" }
  component.row { "Row two" }
  component.footer do
    render(Primer::ButtonComponent.new(scheme: :primary)) { "Action" }
  end
end %>

```erb
<%%= render(Primer::BorderBoxComponent.new) do |component|
  component.header { safe "<h2>Header</h2>" }
  component.body do
    markdownify do %>
Markdown **content** rendered _inside_ the component by [Bridgetown](https://www.bridgetownrb.com).
<%%  end
  end
  component.row { "Row one" }
  component.row { "Row two" }
  component.footer do
    render(Primer::ButtonComponent.new(scheme: :primary)) { "Action" }
  end
end %>
```

### BlankslateComponent

<%= render Primer::BlankslateComponent.new(
  title: "Title",
  description: "Description",
) do |component| %>
  <% component.spinner(size: :large) %>
<% end %>

### LayoutComponent

<%= render(Primer::LayoutComponent.new) do |component| %>
  <% component.sidebar { "Sidebar" } %>
  <% component.main { "Main" } %>
<% end %>

### ProgressBarComponent

<%= render(Primer::ProgressBarComponent.new) do |component| %>
  <% component.item(percentage: 10) %>
  <% component.item(bg: :blue_4, percentage: 20) %>
  <% component.item(bg: :red_4, percentage: 30) %>
<% end %>

### FlashComponent

<%= render(Primer::FlashComponent.new) { "This is a flash message!" } %>
<%= render(Primer::FlashComponent.new(scheme: :warning)) { "This is a warning flash message!" } %>
<%= render(Primer::FlashComponent.new(scheme: :danger)) { "This is a danger flash message!" } %>
<%= render(Primer::FlashComponent.new(scheme: :success)) { "This is a success flash message!" } %>
